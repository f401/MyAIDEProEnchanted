.class public Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;
.super Lcom/jcraft/jsch/UserAuth;


# static fields
.field private static final Zo:[Ljava/lang/String;

.field private static final v5:[[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    new-array v1, v0, [[B

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_18

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->v5:[[B

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "gssapi-with-mic.krb5"

    aput-object v1, v0, v3

    sput-object v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->Zo:[Ljava/lang/String;

    return-void

    :array_18
    .array-data 1
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0x12t
        0x1t
        0x2t
        0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Lcom/jcraft/jsch/Session;)Z
    .registers 12

    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->j6(Lcom/jcraft/jsch/Session;)Z

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->Hw:Ljava/lang/String;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->DW:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->DW()V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    const-string v3, "ssh-connection"

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    const-string v4, "gssapi-with-mic"

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    sget-object v5, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->v5:[[B

    array-length v5, v5

    invoke-virtual {v1, v5}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_3a
    sget-object v6, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->v5:[[B

    array-length v7, v6

    if-lt v5, v7, :cond_1c8

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->DW:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v5}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    :cond_44
    :goto_44
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v5}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v5

    iput-object v5, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x33

    if-ne v5, v6, :cond_59

    return v1

    :cond_59
    const/16 v7, 0x3c

    if-ne v5, v7, :cond_19c

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->FH()I

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v7

    const/4 v5, 0x0

    :goto_73
    sget-object v8, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->v5:[[B

    array-length v9, v8

    if-lt v5, v9, :cond_7a

    const/4 v5, 0x0

    goto :goto_86

    :cond_7a
    aget-object v8, v8, v5

    invoke-static {v7, v8}, Lcom/jcraft/jsch/Util;->j6([B[B)Z

    move-result v8

    if-eqz v8, :cond_198

    sget-object v7, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->Zo:[Ljava/lang/String;

    aget-object v5, v7, v5

    :goto_86
    if-nez v5, :cond_89

    return v1

    :cond_89
    :try_start_89
    invoke-virtual {p1, v5}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jcraft/jsch/GSSContext;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_97} :catch_196

    :try_start_97
    iget-object v7, p0, Lcom/jcraft/jsch/UserAuth;->Hw:Ljava/lang/String;

    iget-object v8, p1, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Lcom/jcraft/jsch/GSSContext;->j6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9e
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_97 .. :try_end_9e} :catch_194

    new-array v7, v1, [B

    :cond_a0
    :goto_a0
    invoke-interface {v5}, Lcom/jcraft/jsch/GSSContext;->DW()Z

    move-result v8

    if-eqz v8, :cond_12d

    new-instance v7, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v7}, Lcom/jcraft/jsch/Buffer;-><init>()V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->Zo()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-virtual {v7, v2}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-virtual {v7, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v0, v7, Lcom/jcraft/jsch/Buffer;->DW:[B

    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->Hw()I

    move-result v2

    invoke-interface {v5, v0, v1, v2}, Lcom/jcraft/jsch/GSSContext;->DW([BII)[B

    move-result-object v0

    if-nez v0, :cond_d3

    return v1

    :cond_d3
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->DW:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->DW()V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    const/16 v3, 0x42

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->DW:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    invoke-interface {v5}, Lcom/jcraft/jsch/GSSContext;->j6()V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    iget-object p1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x34

    if-ne p1, v0, :cond_102

    const/4 p1, 0x1

    return p1

    :cond_102
    if-ne p1, v6, :cond_12c

    iget-object p1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    iget-object p1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object p1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object p1, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object p1

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j6()I

    move-result v0

    if-nez v0, :cond_122

    goto :goto_12c

    :cond_122
    new-instance v0, Lcom/jcraft/jsch/JSchPartialAuthException;

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12c
    :goto_12c
    return v1

    :cond_12d
    :try_start_12d
    array-length v8, v7

    invoke-interface {v5, v7, v1, v8}, Lcom/jcraft/jsch/GSSContext;->j6([BII)[B

    move-result-object v7
    :try_end_132
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_12d .. :try_end_132} :catch_194

    if-eqz v7, :cond_14a

    iget-object v8, p0, Lcom/jcraft/jsch/UserAuth;->DW:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Packet;->DW()V

    iget-object v8, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v8, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v8, v7}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v8, p0, Lcom/jcraft/jsch/UserAuth;->DW:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v8}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    :cond_14a
    invoke-interface {v5}, Lcom/jcraft/jsch/GSSContext;->DW()Z

    move-result v8

    if-nez v8, :cond_a0

    iget-object v7, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v7}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v7

    iput-object v7, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    iget-object v7, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x40

    if-ne v7, v8, :cond_173

    :goto_164
    iget-object v7, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v7}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v7

    iput-object v7, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    iget-object v7, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v7

    goto :goto_178

    :cond_173
    const/16 v8, 0x41

    if-ne v7, v8, :cond_17a

    goto :goto_164

    :goto_178
    and-int/lit16 v7, v7, 0xff

    :cond_17a
    if-ne v7, v6, :cond_17d

    return v1

    :cond_17d
    iget-object v7, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->FH()I

    iget-object v7, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v7, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v7, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v7

    goto/16 :goto_a0

    :catch_194
    move-exception p1

    goto :goto_197

    :catch_196
    move-exception p1

    :goto_197
    return v1

    :cond_198
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_73

    :cond_19c
    const/16 v6, 0x35

    if-ne v5, v6, :cond_1c7

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->FH()I

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v5

    iget-object v6, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->tp()[B

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/jcraft/jsch/UserAuth;->j6:Lcom/jcraft/jsch/UserInfo;

    if-eqz v6, :cond_44

    invoke-interface {v6, v5}, Lcom/jcraft/jsch/UserInfo;->DW(Ljava/lang/String;)V

    goto/16 :goto_44

    :cond_1c7
    return v1

    :cond_1c8
    iget-object v7, p0, Lcom/jcraft/jsch/UserAuth;->FH:Lcom/jcraft/jsch/Buffer;

    aget-object v6, v6, v5

    invoke-virtual {v7, v6}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3a
.end method
