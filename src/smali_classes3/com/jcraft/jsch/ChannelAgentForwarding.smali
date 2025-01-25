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
    .registers 3

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->lg:B

    const/4 v1, 0x2

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rN:B

    const/4 v1, 0x3

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->er:B

    const/4 v1, 0x4

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->yS:B

    const/4 v1, 0x5

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->gW:B

    const/4 v1, 0x6

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->BT:B

    const/4 v1, 0x7

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->vy:B

    const/16 v1, 0x8

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->P8:B

    const/16 v1, 0x9

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ei:B

    const/16 v1, 0xb

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->nw:B

    const/16 v1, 0xc

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SI:B

    const/16 v1, 0xd

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->KD:B

    const/16 v1, 0xe

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ro:B

    const/16 v1, 0x11

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->cn:B

    const/16 v1, 0x12

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->sh:B

    const/16 v1, 0x13

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->cb:B

    const/16 v1, 0x1e

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->dx:B

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->sG:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->Sf:Lcom/jcraft/jsch/Buffer;

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->vJ:Lcom/jcraft/jsch/Packet;

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    const/high16 v1, 0x20000

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Channel;->Zo(I)V

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Channel;->v5(I)V

    const/16 v1, 0x4000

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Channel;->Hw(I)V

    const-string v1, "auth-agent@openssh.com"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/Channel;->v5:[B

    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->we()V

    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->QX:Z

    return-void
.end method

.method private j6([B)V
    .registers 4

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

    :try_start_20
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->vJ:Lcom/jcraft/jsch/Packet;

    array-length p1, p1

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, v1, p0, p1}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception p1

    :goto_2e
    return-void
.end method


# virtual methods
.method Hw()V
    .registers 1

    invoke-super {p0}, Lcom/jcraft/jsch/Channel;->Hw()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->FH()V

    return-void
.end method

.method j6([BII)V
    .registers 10

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->vJ:Lcom/jcraft/jsch/Packet;

    if-nez v0, :cond_14

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/Channel;->tp:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->Sf:Lcom/jcraft/jsch/Buffer;

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->vJ:Lcom/jcraft/jsch/Packet;

    :cond_14
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->J8()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v2, v1

    iget v3, v0, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/2addr v3, p3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_31

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->Hw:I

    add-int/2addr v0, p3

    new-array v0, v0, [B

    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    iput-object v0, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    :cond_31
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/Buffer;->DW([BII)V

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result p1

    iget-object p2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2}, Lcom/jcraft/jsch/Buffer;->Hw()I

    move-result p2

    if-le p1, p2, :cond_4d

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    iget p2, p1, Lcom/jcraft/jsch/Buffer;->Hw:I

    add-int/lit8 p2, p2, -0x4

    iput p2, p1, Lcom/jcraft/jsch/Buffer;->Hw:I

    return-void

    :cond_4d
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j6()I

    move-result p1

    :try_start_53
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object p2
    :try_end_57
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_53 .. :try_end_57} :catch_1cc

    invoke-virtual {p2}, Lcom/jcraft/jsch/Session;->Hw()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object p3

    invoke-virtual {p2}, Lcom/jcraft/jsch/Session;->gn()Lcom/jcraft/jsch/UserInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->we()V

    const/16 v0, 0xb

    if-ne p1, v0, :cond_ba

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-interface {p3}, Lcom/jcraft/jsch/IdentityRepository;->j6()Ljava/util/Vector;

    move-result-object v0

    monitor-enter v0

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_76
    :try_start_76
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p3

    if-lt p1, p3, :cond_a6

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    :goto_81
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    if-lt v4, p1, :cond_8a

    monitor-exit v0

    goto/16 :goto_1bb

    :cond_8a
    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/Identity;

    invoke-interface {p1}, Lcom/jcraft/jsch/Identity;->FH()[B

    move-result-object p1

    if-nez p1, :cond_97

    goto :goto_a3

    :cond_97
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    sget-object p2, Lcom/jcraft/jsch/Util;->FH:[B

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    :goto_a3
    add-int/lit8 v4, v4, 0x1

    goto :goto_81

    :cond_a6
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jcraft/jsch/Identity;

    invoke-interface {p3}, Lcom/jcraft/jsch/Identity;->FH()[B

    move-result-object p3

    if-eqz p3, :cond_b4

    add-int/lit8 p2, p2, 0x1

    :cond_b4
    add-int/lit8 p1, p1, 0x1

    goto :goto_76

    :catchall_b7
    move-exception p1

    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_76 .. :try_end_b9} :catchall_b7

    throw p1

    :cond_ba
    const/4 v0, 0x1

    if-ne p1, v0, :cond_ca

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v4}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    goto/16 :goto_1bb

    :cond_ca
    const/16 v1, 0xd

    if-ne p1, v1, :cond_16b

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object p1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-interface {p3}, Lcom/jcraft/jsch/IdentityRepository;->j6()Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1

    :goto_e4
    :try_start_e4
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p3

    const/4 v2, 0x0

    if-lt v4, p3, :cond_ed

    move-object p3, v2

    goto :goto_148

    :cond_ed
    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jcraft/jsch/Identity;

    invoke-interface {p3}, Lcom/jcraft/jsch/Identity;->FH()[B

    move-result-object v3

    if-nez v3, :cond_fb

    goto/16 :goto_164

    :cond_fb
    invoke-interface {p3}, Lcom/jcraft/jsch/Identity;->FH()[B

    move-result-object v3

    invoke-static {p1, v3}, Lcom/jcraft/jsch/Util;->j6([B[B)Z

    move-result v3

    if-nez v3, :cond_106

    goto :goto_164

    :cond_106
    invoke-interface {p3}, Lcom/jcraft/jsch/Identity;->DW()Z

    move-result v3

    if-eqz v3, :cond_142

    if-nez p2, :cond_10f

    goto :goto_164

    :cond_10f
    invoke-interface {p3}, Lcom/jcraft/jsch/Identity;->DW()Z

    move-result v3

    if-nez v3, :cond_116

    goto :goto_142

    :cond_116
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Passphrase for "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lcom/jcraft/jsch/Identity;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/jcraft/jsch/UserInfo;->FH(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12f

    goto :goto_142

    :cond_12f
    invoke-interface {p2}, Lcom/jcraft/jsch/UserInfo;->j6()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_136

    goto :goto_142

    :cond_136
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_13a
    .catchall {:try_start_e4 .. :try_end_13a} :catchall_168

    :try_start_13a
    invoke-interface {p3, v3}, Lcom/jcraft/jsch/Identity;->j6([B)Z

    move-result v3
    :try_end_13e
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_13a .. :try_end_13e} :catch_141
    .catchall {:try_start_13a .. :try_end_13e} :catchall_168

    if-eqz v3, :cond_10f

    goto :goto_142

    :catch_141
    move-exception v3

    :cond_142
    :goto_142
    :try_start_142
    invoke-interface {p3}, Lcom/jcraft/jsch/Identity;->DW()Z

    move-result v3

    if-nez v3, :cond_164

    :goto_148
    monitor-exit v1
    :try_end_149
    .catchall {:try_start_142 .. :try_end_149} :catchall_168

    if-eqz p3, :cond_14f

    invoke-interface {p3, v0}, Lcom/jcraft/jsch/Identity;->DW([B)[B

    move-result-object v2

    :cond_14f
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    if-nez v2, :cond_159

    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    goto :goto_1bb

    :cond_159
    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    goto :goto_1bb

    :cond_164
    :goto_164
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e4

    :catchall_168
    move-exception p1

    :try_start_169
    monitor-exit v1
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_168

    throw p1

    :cond_16b
    const/16 p2, 0x12

    const/4 v1, 0x6

    if-ne p1, p2, :cond_17f

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/jcraft/jsch/IdentityRepository;->DW([B)Z

    :goto_179
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    goto :goto_1bb

    :cond_17f
    const/16 p2, 0x9

    if-ne p1, p2, :cond_184

    goto :goto_179

    :cond_184
    const/16 p2, 0x13

    if-ne p1, p2, :cond_18c

    invoke-interface {p3}, Lcom/jcraft/jsch/IdentityRepository;->removeAll()V

    goto :goto_179

    :cond_18c
    const/16 p2, 0x11

    const/4 v2, 0x5

    if-ne p1, p2, :cond_1ac

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->Hw()I

    move-result p1

    new-array p1, p1, [B

    iget-object p2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    invoke-interface {p3, p1}, Lcom/jcraft/jsch/IdentityRepository;->j6([B)Z

    move-result p1

    iget-object p2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    if-eqz p1, :cond_1a7

    goto :goto_1a8

    :cond_1a7
    const/4 v1, 0x5

    :goto_1a8
    invoke-virtual {p2, v1}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    goto :goto_1bb

    :cond_1ac
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->ef:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->Hw()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->v5(I)V

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    :goto_1bb
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->Hw()I

    move-result p1

    new-array p1, p1, [B

    iget-object p2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->g3:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelAgentForwarding;->j6([B)V

    return-void

    :catch_1cc
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_1d8

    :goto_1d7
    throw p2

    :goto_1d8
    goto :goto_1d7
.end method

.method public run()V
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->Ws()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->Ws:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->DW()V

    :goto_b
    return-void
.end method
