.class Lcom/jcraft/jsch/UserAuthKeyboardInteractive;
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Lcom/jcraft/jsch/UserAuth;->j6(Lcom/jcraft/jsch/Session;)Z

    iget-object v2, v0, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    instance-of v2, v2, Lcom/jcraft/jsch/UIKeyboardInteractive;

    if-nez v2, :cond_11

    return v3

    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->Hw:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, v1, Lcom/jcraft/jsch/Session;->br:I

    const/16 v5, 0x16

    if-eq v4, v5, :cond_47

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/jcraft/jsch/Session;->br:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_47
    iget-object v4, v1, Lcom/jcraft/jsch/Session;->kQ:[B

    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->Hw:Ljava/lang/String;

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v10

    const/4 v5, 0x0

    :goto_50
    iget v6, v1, Lcom/jcraft/jsch/Session;->aj:I

    iget v7, v1, Lcom/jcraft/jsch/Session;->sy:I

    if-lt v6, v7, :cond_57

    return v3

    :cond_57
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->DW:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Packet;->DW()V

    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    const/16 v7, 0x32

    invoke-virtual {v6, v7}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6, v10}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    const-string v7, "ssh-connection"

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    const-string v11, "keyboard-interactive"

    invoke-static {v11}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    sget-object v7, Lcom/jcraft/jsch/Util;->FH:[B

    invoke-virtual {v6, v7}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    sget-object v7, Lcom/jcraft/jsch/Util;->FH:[B

    invoke-virtual {v6, v7}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->DW:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v1, v6}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    const/4 v12, 0x1

    move-object v13, v4

    move v14, v5

    const/4 v4, 0x1

    :cond_95
    :goto_95
    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v5}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v5

    iput-object v5, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x34

    if-ne v5, v6, :cond_aa

    return v12

    :cond_aa
    const/16 v6, 0x35

    if-ne v5, v6, :cond_d4

    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->FH()I

    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v5

    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->tp()[B

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    if-eqz v6, :cond_95

    invoke-interface {v6, v5}, Lcom/jcraft/jsch/UserInfo;->DW(Ljava/lang/String;)V

    goto :goto_95

    :cond_d4
    const/16 v6, 0x33

    if-ne v5, v6, :cond_113

    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->FH()I

    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v5

    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->j6()I

    move-result v6

    if-nez v6, :cond_109

    if-eqz v4, :cond_f8

    return v3

    :cond_f8
    iget v4, v1, Lcom/jcraft/jsch/Session;->aj:I

    add-int/2addr v4, v12

    iput v4, v1, Lcom/jcraft/jsch/Session;->aj:I

    if-nez v14, :cond_103

    move-object v4, v13

    move v5, v14

    goto/16 :goto_50

    :cond_103
    new-instance v1, Lcom/jcraft/jsch/JSchAuthCancelException;

    invoke-direct {v1, v11}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_109
    new-instance v1, Lcom/jcraft/jsch/JSchPartialAuthException;

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_113
    const/16 v4, 0x3c

    if-ne v5, v4, :cond_208

    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->FH()I

    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v4

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v6

    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v4

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v7

    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v4

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v15

    new-array v8, v15, [Ljava/lang/String;

    new-array v9, v15, [Z

    const/4 v4, 0x0

    :goto_14e
    if-lt v4, v15, :cond_1eb

    const/16 v16, 0x0

    if-eqz v13, :cond_16e

    if-ne v15, v12, :cond_16e

    aget-boolean v4, v9, v3

    if-nez v4, :cond_16e

    aget-object v4, v8, v3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "password:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_16e

    new-array v4, v12, [[B

    aput-object v13, v4, v3

    move-object v5, v4

    goto :goto_1a0

    :cond_16e
    if-gtz v15, :cond_17c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_17c

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_19c

    :cond_17c
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    if-eqz v4, :cond_19c

    check-cast v4, Lcom/jcraft/jsch/UIKeyboardInteractive;

    move-object v5, v2

    invoke-interface/range {v4 .. v9}, Lcom/jcraft/jsch/UIKeyboardInteractive;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_19c

    array-length v5, v4

    new-array v5, v5, [[B

    const/4 v6, 0x0

    :goto_18d
    array-length v7, v4

    if-lt v6, v7, :cond_191

    goto :goto_19e

    :cond_191
    aget-object v7, v4, v6

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_18d

    :cond_19c
    move-object/from16 v5, v16

    :goto_19e
    move-object/from16 v16, v13

    :goto_1a0
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->DW:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Packet;->DW()V

    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    const/16 v6, 0x3d

    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    if-lez v15, :cond_1cf

    if-eqz v5, :cond_1b3

    array-length v4, v5

    if-eq v15, v4, :cond_1cf

    :cond_1b3
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    if-nez v5, :cond_1c8

    invoke-virtual {v4, v15}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    const/4 v4, 0x0

    :goto_1bb
    if-lt v4, v15, :cond_1be

    goto :goto_1cb

    :cond_1be
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    sget-object v7, Lcom/jcraft/jsch/Util;->FH:[B

    invoke-virtual {v6, v7}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1bb

    :cond_1c8
    invoke-virtual {v4, v3}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    :goto_1cb
    if-nez v5, :cond_1d7

    const/4 v14, 0x1

    goto :goto_1d7

    :cond_1cf
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4, v15}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    const/4 v4, 0x0

    :goto_1d5
    if-lt v4, v15, :cond_1e1

    :cond_1d7
    :goto_1d7
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->DW:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    move-object/from16 v13, v16

    const/4 v4, 0x0

    goto/16 :goto_95

    :cond_1e1
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    aget-object v7, v5, v4

    invoke-virtual {v6, v7}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d5

    :cond_1eb
    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v5

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->j6()I

    move-result v5

    if-eqz v5, :cond_201

    const/4 v5, 0x1

    goto :goto_202

    :cond_201
    const/4 v5, 0x0

    :goto_202
    aput-boolean v5, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_14e

    :cond_208
    return v3
.end method
