.class Lcom/jcraft/jsch/UserAuthPassword;
.super Lcom/jcraft/jsch/UserAuth;


# instance fields
.field private final v5:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->v5:I

    return-void
.end method


# virtual methods
.method public j6(Lcom/jcraft/jsch/Session;)Z
    .registers 16

    const-string v0, "ssh-connection"

    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->j6(Lcom/jcraft/jsch/Session;)Z

    iget-object v1, p1, Lcom/jcraft/jsch/Session;->kQ:[B

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->Hw:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/jcraft/jsch/Session;->br:I

    const/16 v4, 0x16

    if-eq v3, v4, :cond_3d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/jcraft/jsch/Session;->br:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3d
    move-object v8, v2

    :cond_3e
    :goto_3e
    :try_start_3e
    iget v2, p1, Lcom/jcraft/jsch/Session;->aj:I

    iget v3, p1, Lcom/jcraft/jsch/Session;->sy:I
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_1d7

    const/4 v9, 0x0

    if-lt v2, v3, :cond_46

    goto :goto_4e

    :cond_46
    const-string v10, "password"

    if-nez v1, :cond_83

    :try_start_4a
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_1d7

    if-nez v2, :cond_54

    :goto_4e
    if-eqz v1, :cond_53

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->DW([B)V

    :cond_53
    return v9

    :cond_54
    :try_start_54
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Password for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/jcraft/jsch/UserInfo;->j6(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7d

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v2}, Lcom/jcraft/jsch/UserInfo;->getPassword()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_77

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_83

    :cond_77
    new-instance p1, Lcom/jcraft/jsch/JSchAuthCancelException;

    invoke-direct {p1, v10}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7d
    new-instance p1, Lcom/jcraft/jsch/JSchAuthCancelException;

    invoke-direct {p1, v10}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_83
    :goto_83
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->Hw:Ljava/lang/String;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v11

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->DW:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->DW()V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    const/16 v12, 0x32

    invoke-virtual {v2, v12}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v11}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-static {v10}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v9}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->DW:Lcom/jcraft/jsch/Packet;

    :goto_b8
    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    :cond_bb
    :goto_bb
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v2
    :try_end_c9
    .catchall {:try_start_54 .. :try_end_c9} :catchall_1d7

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x34

    const/4 v13, 0x1

    if-ne v2, v3, :cond_d6

    if-eqz v1, :cond_d5

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->DW([B)V

    :cond_d5
    return v13

    :cond_d6
    const/16 v3, 0x35

    if-ne v2, v3, :cond_102

    :try_start_da
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->FH()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->tp()[B

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    if-eqz v3, :cond_bb

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v3, v2}, Lcom/jcraft/jsch/UserInfo;->DW(Ljava/lang/String;)V

    goto :goto_bb

    :cond_102
    const/16 v3, 0x3c

    if-ne v2, v3, :cond_199

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->FH()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->tp()[B

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    if-eqz v3, :cond_188

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    instance-of v3, v3, Lcom/jcraft/jsch/UIKeyboardInteractive;

    if-nez v3, :cond_12b

    goto :goto_188

    :cond_12b
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    check-cast v3, Lcom/jcraft/jsch/UIKeyboardInteractive;

    new-array v7, v13, [Z

    const-string v4, "Password Change Required"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/String;

    const-string v2, "New Password: "

    aput-object v2, v6, v9

    move-object v2, v3

    move-object v3, v8

    invoke-interface/range {v2 .. v7}, Lcom/jcraft/jsch/UIKeyboardInteractive;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_182

    aget-object v2, v2, v9

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->DW:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Packet;->DW()V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v12}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v11}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-static {v10}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v13}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->DW([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->DW:Lcom/jcraft/jsch/Packet;

    goto/16 :goto_b8

    :cond_182
    new-instance p1, Lcom/jcraft/jsch/JSchAuthCancelException;

    invoke-direct {p1, v10}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_188
    :goto_188
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    if-eqz p1, :cond_193

    iget-object p1, p0, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    const-string v0, "Password must be changed."

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/UserInfo;->DW(Ljava/lang/String;)V
    :try_end_193
    .catchall {:try_start_da .. :try_end_193} :catchall_1d7

    :cond_193
    if-eqz v1, :cond_198

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->DW([B)V

    :cond_198
    return v9

    :cond_199
    const/16 v3, 0x33

    if-ne v2, v3, :cond_1d1

    :try_start_19d
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->FH()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->j6()I

    move-result v3

    if-nez v3, :cond_1c7

    iget v2, p1, Lcom/jcraft/jsch/Session;->aj:I

    add-int/2addr v2, v13

    iput v2, p1, Lcom/jcraft/jsch/Session;->aj:I

    if-eqz v1, :cond_3e

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->DW([B)V

    const/4 v1, 0x0

    goto/16 :goto_3e

    :cond_1c7
    new-instance p1, Lcom/jcraft/jsch/JSchPartialAuthException;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1d1
    .catchall {:try_start_19d .. :try_end_1d1} :catchall_1d7

    :cond_1d1
    if-eqz v1, :cond_1d6

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->DW([B)V

    :cond_1d6
    return v9

    :catchall_1d7
    move-exception p1

    if-eqz v1, :cond_1dd

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->DW([B)V

    :cond_1dd
    goto :goto_1df

    :goto_1de
    throw p1

    :goto_1df
    goto :goto_1de
.end method
