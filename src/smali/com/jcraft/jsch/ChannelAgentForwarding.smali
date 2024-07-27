.class Lcom/jcraft/jsch/ChannelAgentForwarding;
.super Lcom/jcraft/jsch/Channel;


# instance fields
.field private final BT:B

.field private final KD:B

.field private final P8:B

.field private final SI:B

.field private Sf:Lcom/jcraft/jsch/Buffer;

.field private final cb:B

.field private final cn:B

.field private final dx:B

.field private ef:Lcom/jcraft/jsch/Buffer;

.field private final ei:B

.field private final er:B

.field private g3:Lcom/jcraft/jsch/Buffer;

.field private final gW:B

.field private final lg:B

.field private final nw:B

.field private final rN:B

.field private final ro:B

.field sG:Z

.field private final sh:B

.field private vJ:Lcom/jcraft/jsch/Packet;

.field private final vy:B

.field private final yS:B


# direct methods
.method constructor <init>()V
    .registers 5

    const/high16 v3, 0x20000

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    iput-byte v2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->lg:B

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rN:B

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->er:B

    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->yS:B

    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->gW:B

    const/4 v0, 0x6

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->BT:B

    const/4 v0, 0x7

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->vy:B

    const/16 v0, 0x8

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->P8:B

    const/16 v0, 0x9

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ei:B

    const/16 v0, 0xb

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->nw:B

    const/16 v0, 0xc

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SI:B

    const/16 v0, 0xd

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->KD:B

    const/16 v0, 0xe

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ro:B

    const/16 v0, 0x11

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->cn:B

    const/16 v0, 0x12

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->sh:B

    const/16 v0, 0x13

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->cb:B

    const/16 v0, 0x1e

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->dx:B

    iput-boolean v2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->sG:Z

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->Sf:Lcom/jcraft/jsch/Buffer;

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->vJ:Lcom/jcraft/jsch/Packet;

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Channel;->Zo(I)V

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Channel;->v5(I)V

    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->Hw(I)V

    const-string v0, "auth-agent@openssh.com"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->v5:[B

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->we()V

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    iput-boolean v2, p0, Lcom/jcraft/jsch/Channel;->QX:Z

    return-void
.end method

.method private j6([B)V
    .registers 5

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->vJ:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->DW()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->Sf:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->Sf:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/Channel;->Hw:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->Sf:Lcom/jcraft/jsch/Buffer;

    array-length v1, p1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->Sf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->vJ:Lcom/jcraft/jsch/Packet;

    array-length v2, p1

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method Hw()V
    .registers 1

    invoke-super {p0}, Lcom/jcraft/jsch/Channel;->Hw()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->FH()V

    return-void
.end method

.method j6([BII)V
    .registers 13

    const/4 v3, 0x0

    const/4 v1, 0x5

    const/4 v0, 0x6

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->vJ:Lcom/jcraft/jsch/Packet;

    if-nez v4, :cond_0

    new-instance v4, Lcom/jcraft/jsch/Buffer;

    iget v5, p0, Lcom/jcraft/jsch/Channel;->tp:I

    invoke-direct {v4, v5}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->Sf:Lcom/jcraft/jsch/Buffer;

    new-instance v4, Lcom/jcraft/jsch/Packet;

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->Sf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v4, v5}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->vJ:Lcom/jcraft/jsch/Packet;

    :cond_0
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->J8()V

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    iget-object v5, v4, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v6, v5

    iget v7, v4, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/2addr v7, p3

    if-ge v6, v7, :cond_1

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->Hw:I

    add-int/2addr v4, p3

    new-array v4, v4, [B

    array-length v6, v5

    invoke-static {v5, v2, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    iput-object v4, v5, Lcom/jcraft/jsch/Buffer;->DW:[B

    :cond_1
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4, p1, p2, p3}, Lcom/jcraft/jsch/Buffer;->DW([BII)V

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v4

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->Hw()I

    move-result v5

    if-le v4, v5, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    iget v1, v0, Lcom/jcraft/jsch/Buffer;->Hw:I

    add-int/lit8 v1, v1, -0x4

    iput v1, v0, Lcom/jcraft/jsch/Buffer;->Hw:I

    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->j6()I

    move-result v4

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    invoke-virtual {v5}, Lcom/jcraft/jsch/Session;->Hw()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v6

    invoke-virtual {v5}, Lcom/jcraft/jsch/Session;->gn()Lcom/jcraft/jsch/UserInfo;

    move-result-object v5

    iget-object v7, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->we()V

    const/16 v7, 0xb

    if-ne v4, v7, :cond_6

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-interface {v6}, Lcom/jcraft/jsch/IdentityRepository;->j6()Ljava/util/Vector;

    move-result-object v4

    monitor-enter v4

    move v1, v2

    move v3, v2

    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v3, v0, :cond_5

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    :goto_2
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->Hw()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->j6([B)V

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Identity;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->FH()[B

    move-result-object v0

    if-nez v0, :cond_4

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    sget-object v1, Lcom/jcraft/jsch/Util;->FH:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    :try_start_3
    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Identity;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->FH()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_16

    add-int/lit8 v0, v1, 0x1

    :goto_5
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_1

    :cond_6
    const/4 v7, 0x1

    if-ne v4, v7, :cond_7

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    goto :goto_3

    :cond_7
    const/16 v7, 0xd

    if-ne v4, v7, :cond_f

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v7

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-interface {v6}, Lcom/jcraft/jsch/IdentityRepository;->j6()Ljava/util/Vector;

    move-result-object v6

    monitor-enter v6

    move v1, v2

    :goto_6
    :try_start_4
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_8

    move-object v0, v3

    :goto_7
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_15

    invoke-interface {v0, v7}, Lcom/jcraft/jsch/Identity;->DW([B)[B

    move-result-object v0

    :goto_8
    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    goto/16 :goto_3

    :cond_8
    :try_start_5
    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Identity;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->FH()[B

    move-result-object v2

    if-nez v2, :cond_a

    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_a
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->FH()[B

    move-result-object v2

    invoke-static {v4, v2}, Lcom/jcraft/jsch/Util;->j6([B[B)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->DW()Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v5, :cond_9

    :cond_b
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->DW()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    :goto_9
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->DW()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_7

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "Passphrase for "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/jcraft/jsch/UserInfo;->FH(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v5}, Lcom/jcraft/jsch/UserInfo;->j6()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v2

    :try_start_6
    invoke-interface {v0, v2}, Lcom/jcraft/jsch/Identity;->j6([B)Z
    :try_end_6
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_9

    :cond_e
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :cond_f
    const/16 v2, 0x12

    if-ne v4, v2, :cond_10

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v1

    invoke-interface {v6, v1}, Lcom/jcraft/jsch/IdentityRepository;->DW([B)Z

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    goto/16 :goto_3

    :cond_10
    const/16 v2, 0x9

    if-ne v4, v2, :cond_11

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    goto/16 :goto_3

    :cond_11
    const/16 v2, 0x13

    if-ne v4, v2, :cond_12

    invoke-interface {v6}, Lcom/jcraft/jsch/IdentityRepository;->removeAll()V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    goto/16 :goto_3

    :cond_12
    const/16 v2, 0x11

    if-ne v4, v2, :cond_14

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->Hw()I

    move-result v2

    new-array v2, v2, [B

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    invoke-interface {v6, v2}, Lcom/jcraft/jsch/IdentityRepository;->j6([B)Z

    move-result v2

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    if-eqz v2, :cond_13

    :goto_a
    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    goto/16 :goto_3

    :cond_13
    move v0, v1

    goto :goto_a

    :cond_14
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->Hw()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->v5(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    goto/16 :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v2

    goto/16 :goto_9

    :cond_15
    move-object v0, v3

    goto/16 :goto_8

    :cond_16
    move v0, v1

    goto/16 :goto_5
.end method

.method public run()V
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->Ws()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->Ws:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->DW()V

    goto :goto_0
.end method
