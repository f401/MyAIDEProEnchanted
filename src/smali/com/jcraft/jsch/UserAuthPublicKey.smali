.class Lcom/jcraft/jsch/UserAuthPublicKey;
.super Lcom/jcraft/jsch/UserAuth;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Lcom/jcraft/jsch/Session;)Z
    .registers 16

    const/16 v13, 0x33

    const/4 v6, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->j6(Lcom/jcraft/jsch/Session;)Z

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->Hw()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/jcraft/jsch/IdentityRepository;->j6()Ljava/util/Vector;

    move-result-object v8

    monitor-enter v8

    :try_start_0
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_0

    monitor-exit v8

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->Hw:Ljava/lang/String;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v9

    move v7, v2

    :goto_1
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v7, v0, :cond_2

    :cond_1
    monitor-exit v8

    move v0, v2

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/jcraft/jsch/Session;->aj:I

    iget v1, p1, Lcom/jcraft/jsch/Session;->sy:I

    if-lt v0, v1, :cond_3

    monitor-exit v8

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v8, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Identity;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->FH()[B

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->DW:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->DW()V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    const/16 v5, 0x32

    invoke-virtual {v1, v5}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v9}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    const-string v5, "ssh-connection"

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    const-string v5, "publickey"

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->j6()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->DW:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/16 v5, 0x3c

    if-ne v1, v5, :cond_7

    :cond_5
    const/16 v5, 0x3c

    if-eq v1, v5, :cond_8

    :cond_6
    :goto_3
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_7
    if-eq v1, v13, :cond_5

    const/16 v5, 0x35

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->FH()I

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v1

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->tp()[B

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v5, v1}, Lcom/jcraft/jsch/UserInfo;->DW(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_8
    move v1, v6

    :cond_9
    :try_start_1
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->DW()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    if-eqz v5, :cond_e

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->DW()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Passphrase for "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Lcom/jcraft/jsch/UserInfo;->FH(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_a
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v5}, Lcom/jcraft/jsch/UserInfo;->j6()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v5

    :goto_4
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->DW()Z

    move-result v10

    if-eqz v10, :cond_b

    if-eqz v5, :cond_10

    :cond_b
    invoke-interface {v0, v5}, Lcom/jcraft/jsch/Identity;->j6([B)Z

    move-result v10

    if-eqz v10, :cond_10

    if-eqz v5, :cond_15

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->Hw()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v1

    instance-of v1, v1, Lcom/jcraft/jsch/IdentityRepository$Wrapper;

    if-eqz v1, :cond_15

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->Hw()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v1

    check-cast v1, Lcom/jcraft/jsch/IdentityRepository$Wrapper;

    invoke-virtual {v1}, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->DW()V

    move-object v1, v5

    :goto_5
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->DW([B)V

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->DW()Z

    move-result v1

    if-nez v1, :cond_6

    if-nez v4, :cond_14

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->FH()[B

    move-result-object v1

    :goto_6
    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->DW:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Packet;->DW()V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4, v9}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    const-string v5, "ssh-connection"

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    const-string v5, "publickey"

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->j6()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4, v1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->Zo()[B

    move-result-object v1

    array-length v4, v1

    add-int/lit8 v5, v4, 0x4

    iget-object v10, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    iget v10, v10, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/2addr v10, v5

    add-int/lit8 v10, v10, -0x5

    new-array v10, v10, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    ushr-int/lit8 v11, v4, 0x18

    int-to-byte v11, v11

    aput-byte v11, v10, v2

    ushr-int/lit8 v11, v4, 0x10

    int-to-byte v11, v11

    aput-byte v11, v10, v3

    const/4 v11, 0x2

    ushr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    const/4 v11, 0x3

    int-to-byte v12, v4

    aput-byte v12, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x4

    :try_start_2
    invoke-static {v1, v11, v10, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v4, 0x5

    iget-object v11, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    iget v11, v11, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/lit8 v11, v11, -0x5

    invoke-static {v1, v4, v10, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v0, v10}, Lcom/jcraft/jsch/Identity;->DW([B)[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->DW:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    :cond_c
    :goto_7
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x34

    if-ne v0, v1, :cond_11

    monitor-exit v8

    move v0, v3

    goto/16 :goto_0

    :cond_d
    new-instance v0, Lcom/jcraft/jsch/JSchAuthCancelException;

    const-string v1, "publickey"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "USERAUTH fail"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_10
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->DW([B)V

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_11
    const/16 v1, 0x35

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v1, v0}, Lcom/jcraft/jsch/UserInfo;->DW(Ljava/lang/String;)V

    goto :goto_7

    :cond_12
    if-ne v0, v13, :cond_6

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->j6()I

    move-result v1

    if-nez v1, :cond_13

    iget v0, p1, Lcom/jcraft/jsch/Session;->aj:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/jcraft/jsch/Session;->aj:I

    goto/16 :goto_3

    :cond_13
    new-instance v1, Lcom/jcraft/jsch/JSchPartialAuthException;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_14
    move-object v1, v4

    goto/16 :goto_6

    :cond_15
    move-object v1, v5

    goto/16 :goto_5
.end method
