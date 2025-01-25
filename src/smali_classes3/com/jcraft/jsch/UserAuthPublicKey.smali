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
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-super/range {p0 .. p1}, Lcom/jcraft/jsch/UserAuth;->j6(Lcom/jcraft/jsch/Session;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->Hw()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v2

    invoke-interface {v2}, Lcom/jcraft/jsch/IdentityRepository;->j6()Ljava/util/Vector;

    move-result-object v2

    monitor-enter v2

    :try_start_10
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x0

    if-gtz v3, :cond_19

    monitor-exit v2

    return v4

    :cond_19
    iget-object v3, v1, Lcom/jcraft/jsch/UserAuth;->Hw:Ljava/lang/String;

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v5, 0x0

    :goto_20
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v5, v6, :cond_28

    goto/16 :goto_1ca

    :cond_28
    iget v6, v0, Lcom/jcraft/jsch/Session;->aj:I

    iget v7, v0, Lcom/jcraft/jsch/Session;->sy:I

    if-lt v6, v7, :cond_30

    monitor-exit v2

    return v4

    :cond_30
    invoke-virtual {v2, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jcraft/jsch/Identity;

    invoke-interface {v6}, Lcom/jcraft/jsch/Identity;->FH()[B

    move-result-object v7

    const/16 v8, 0x35

    const/16 v9, 0x33

    const/16 v10, 0x32

    if-eqz v7, :cond_c9

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->DW:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v11}, Lcom/jcraft/jsch/Packet;->DW()V

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v11, v10}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v11, v3}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    const-string v12, "ssh-connection"

    invoke-static {v12}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    const-string v12, "publickey"

    invoke-static {v12}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v11, v4}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-interface {v6}, Lcom/jcraft/jsch/Identity;->j6()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v11, v7}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->DW:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0, v11}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    :cond_83
    :goto_83
    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v11}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v11

    iput-object v11, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v11}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0x3c

    if-ne v11, v12, :cond_98

    goto :goto_c5

    :cond_98
    if-ne v11, v9, :cond_9b

    goto :goto_c5

    :cond_9b
    if-ne v11, v8, :cond_c5

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v11}, Lcom/jcraft/jsch/Buffer;->FH()I

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v11}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v11}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v11}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v11

    iget-object v12, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v12}, Lcom/jcraft/jsch/Buffer;->tp()[B

    invoke-static {v11}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    if-eqz v12, :cond_83

    iget-object v12, v1, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v12, v11}, Lcom/jcraft/jsch/UserInfo;->DW(Ljava/lang/String;)V

    goto :goto_83

    :cond_c5
    :goto_c5
    if-eq v11, v12, :cond_c9

    goto/16 :goto_247

    :cond_c9
    const/4 v11, 0x5

    const/4 v12, 0x5

    :cond_cb
    invoke-interface {v6}, Lcom/jcraft/jsch/Identity;->DW()Z

    move-result v13

    if-eqz v13, :cond_113

    iget-object v13, v1, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    if-eqz v13, :cond_10b

    invoke-interface {v6}, Lcom/jcraft/jsch/Identity;->DW()Z

    move-result v13

    if-eqz v13, :cond_fe

    iget-object v13, v1, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v14, "Passphrase for "

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/jcraft/jsch/Identity;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/jcraft/jsch/UserInfo;->FH(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f6

    goto :goto_fe

    :cond_f6
    new-instance v0, Lcom/jcraft/jsch/JSchAuthCancelException;

    const-string v3, "publickey"

    invoke-direct {v0, v3}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_fe
    :goto_fe
    iget-object v13, v1, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v13}, Lcom/jcraft/jsch/UserInfo;->j6()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_113

    invoke-static {v13}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v13

    goto :goto_114

    :cond_10b
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v3, "USERAUTH fail"

    invoke-direct {v0, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_113
    const/4 v13, 0x0

    :goto_114
    invoke-interface {v6}, Lcom/jcraft/jsch/Identity;->DW()Z

    move-result v14

    const/4 v15, 0x1

    if-eqz v14, :cond_11d

    if-eqz v13, :cond_138

    :cond_11d
    invoke-interface {v6, v13}, Lcom/jcraft/jsch/Identity;->j6([B)Z

    move-result v14

    if-eqz v14, :cond_138

    if-eqz v13, :cond_136

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->Hw()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v12

    instance-of v12, v12, Lcom/jcraft/jsch/IdentityRepository$Wrapper;

    if-eqz v12, :cond_136

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->Hw()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v12

    check-cast v12, Lcom/jcraft/jsch/IdentityRepository$Wrapper;

    invoke-virtual {v12}, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->DW()V

    :cond_136
    move-object v14, v13

    goto :goto_13f

    :cond_138
    invoke-static {v13}, Lcom/jcraft/jsch/Util;->DW([B)V

    sub-int/2addr v12, v15

    if-nez v12, :cond_cb

    const/4 v14, 0x0

    :goto_13f
    invoke-static {v14}, Lcom/jcraft/jsch/Util;->DW([B)V

    invoke-interface {v6}, Lcom/jcraft/jsch/Identity;->DW()Z

    move-result v12

    if-eqz v12, :cond_14a

    goto/16 :goto_247

    :cond_14a
    if-nez v7, :cond_150

    invoke-interface {v6}, Lcom/jcraft/jsch/Identity;->FH()[B

    move-result-object v7

    :cond_150
    if-nez v7, :cond_154

    goto/16 :goto_247

    :cond_154
    iget-object v12, v1, Lcom/jcraft/jsch/UserAuth;->DW:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v12}, Lcom/jcraft/jsch/Packet;->DW()V

    iget-object v12, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v12, v10}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v10, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v10, v3}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v10, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    const-string v12, "ssh-connection"

    invoke-static {v12}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v10, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    const-string v12, "publickey"

    invoke-static {v12}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v10, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v10, v15}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v10, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-interface {v6}, Lcom/jcraft/jsch/Identity;->j6()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v10, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v10, v7}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->Zo()[B

    move-result-object v7

    array-length v10, v7

    add-int/lit8 v12, v10, 0x4

    iget-object v13, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    iget v13, v13, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/2addr v13, v12

    sub-int/2addr v13, v11

    new-array v13, v13, [B
    :try_end_19f
    .catchall {:try_start_10 .. :try_end_19f} :catchall_24b

    ushr-int/lit8 v14, v10, 0x18

    int-to-byte v14, v14

    aput-byte v14, v13, v4

    ushr-int/lit8 v14, v10, 0x10

    int-to-byte v14, v14

    aput-byte v14, v13, v15

    ushr-int/lit8 v14, v10, 0x8

    int-to-byte v14, v14

    const/16 v16, 0x2

    aput-byte v14, v13, v16

    const/4 v14, 0x3

    int-to-byte v9, v10

    aput-byte v9, v13, v14

    const/4 v9, 0x4

    :try_start_1b5
    invoke-static {v7, v4, v13, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    iget-object v7, v7, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget-object v9, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    iget v9, v9, Lcom/jcraft/jsch/Buffer;->FH:I

    sub-int/2addr v9, v11

    invoke-static {v7, v11, v13, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v6, v13}, Lcom/jcraft/jsch/Identity;->DW([B)[B

    move-result-object v6

    if-nez v6, :cond_1cc

    :goto_1ca
    monitor-exit v2

    return v4

    :cond_1cc
    iget-object v7, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7, v6}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v6, v1, Lcom/jcraft/jsch/UserAuth;->DW:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0, v6}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    :cond_1d6
    :goto_1d6
    iget-object v6, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v6}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v6

    iput-object v6, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    iget-object v6, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x34

    if-ne v6, v7, :cond_1ec

    monitor-exit v2

    return v15

    :cond_1ec
    if-ne v6, v8, :cond_216

    iget-object v6, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->FH()I

    iget-object v6, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v6, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v6, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v6

    iget-object v7, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->tp()[B

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    if-eqz v7, :cond_1d6

    iget-object v7, v1, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v7, v6}, Lcom/jcraft/jsch/UserInfo;->DW(Ljava/lang/String;)V

    goto :goto_1d6

    :cond_216
    const/16 v9, 0x33

    if-ne v6, v9, :cond_247

    iget-object v6, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->FH()I

    iget-object v6, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v6, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v6, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v6

    iget-object v7, v1, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->j6()I

    move-result v7

    if-nez v7, :cond_23d

    iget v6, v0, Lcom/jcraft/jsch/Session;->aj:I

    add-int/2addr v6, v15

    iput v6, v0, Lcom/jcraft/jsch/Session;->aj:I

    goto :goto_247

    :cond_23d
    new-instance v0, Lcom/jcraft/jsch/JSchPartialAuthException;

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_247
    :goto_247
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_20

    :catchall_24b
    move-exception v0

    monitor-exit v2
    :try_end_24d
    .catchall {:try_start_1b5 .. :try_end_24d} :catchall_24b

    goto :goto_24f

    :goto_24e
    throw v0

    :goto_24f
    goto :goto_24e
.end method
