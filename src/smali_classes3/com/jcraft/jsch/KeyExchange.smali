.class public abstract Lcom/jcraft/jsch/KeyExchange;
.super Ljava/lang/Object;


# instance fields
.field protected DW:Lcom/jcraft/jsch/HASH;

.field protected FH:[B

.field protected Hw:[B

.field protected j6:Lcom/jcraft/jsch/Session;

.field protected v5:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->j6:Lcom/jcraft/jsch/Session;

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->DW:Lcom/jcraft/jsch/HASH;

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->FH:[B

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->Hw:[B

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->v5:[B

    return-void
.end method

.method protected static j6([B[B)[Ljava/lang/String;
    .registers 16

    const/16 v0, 0xa

    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v2, p0}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    const/16 p0, 0x11

    invoke-virtual {v2, p0}, Lcom/jcraft/jsch/Buffer;->Hw(I)V

    new-instance v3, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v3, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    invoke-virtual {v3, p0}, Lcom/jcraft/jsch/Buffer;->Hw(I)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    const/4 v5, 0x0

    if-eqz p1, :cond_6f

    const/4 p1, 0x0

    :goto_23
    if-lt p1, v0, :cond_4f

    const/4 p1, 0x0

    :goto_26
    if-lt p1, v0, :cond_2f

    invoke-virtual {v2, p0}, Lcom/jcraft/jsch/Buffer;->Hw(I)V

    invoke-virtual {v3, p0}, Lcom/jcraft/jsch/Buffer;->Hw(I)V

    goto :goto_6f

    :cond_2f
    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "kex: client: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v8

    invoke-static {v8}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_26

    :cond_4f
    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "kex: server: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v8

    invoke-static {v8}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_23

    :cond_6f
    :goto_6f
    const/4 p0, 0x0

    :goto_70
    if-lt p0, v0, :cond_d3

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object p0

    invoke-interface {p0, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_d2

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "kex: server->client "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    aget-object v2, v1, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    aget-object v2, v1, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v4, p1}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "kex: client->server "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    aget-object v2, v1, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v4, p1}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_d2
    return-object v1

    :cond_d3
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object p1

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_dd
    array-length v9, v6

    const/4 v10, 0x0

    if-lt v7, v9, :cond_e2

    goto :goto_11d

    :cond_e2
    :goto_e2
    array-length v9, v6

    const/16 v11, 0x2c

    if-ge v7, v9, :cond_ef

    aget-byte v9, v6, v7

    if-ne v9, v11, :cond_ec

    goto :goto_ef

    :cond_ec
    add-int/lit8 v7, v7, 0x1

    goto :goto_e2

    :cond_ef
    :goto_ef
    if-ne v8, v7, :cond_f2

    return-object v10

    :cond_f2
    sub-int v9, v7, v8

    invoke-static {v6, v8, v9}, Lcom/jcraft/jsch/Util;->j6([BII)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_fa
    array-length v13, p1

    if-lt v9, v13, :cond_101

    add-int/lit8 v8, v7, 0x1

    move v7, v8

    goto :goto_dd

    :cond_101
    :goto_101
    array-length v13, p1

    if-ge v9, v13, :cond_10c

    aget-byte v13, p1, v9

    if-ne v13, v11, :cond_109

    goto :goto_10c

    :cond_109
    add-int/lit8 v9, v9, 0x1

    goto :goto_101

    :cond_10c
    :goto_10c
    if-ne v12, v9, :cond_10f

    return-object v10

    :cond_10f
    sub-int v13, v9, v12

    invoke-static {p1, v12, v13}, Lcom/jcraft/jsch/Util;->j6([BII)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12d

    aput-object v8, v1, p0

    :goto_11d
    if-nez v7, :cond_124

    const-string p1, ""

    aput-object p1, v1, p0

    goto :goto_129

    :cond_124
    aget-object p1, v1, p0

    if-nez p1, :cond_129

    return-object v10

    :cond_129
    :goto_129
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_70

    :cond_12d
    add-int/lit8 v12, v9, 0x1

    move v9, v12

    goto :goto_fa
.end method


# virtual methods
.method DW()[B
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->Hw:[B

    return-object v0
.end method

.method FH()Lcom/jcraft/jsch/HASH;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->DW:Lcom/jcraft/jsch/HASH;

    return-object v0
.end method

.method Hw()[B
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->v5:[B

    return-object v0
.end method

.method public abstract VH()I
.end method

.method public abstract Zo()Ljava/lang/String;
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->j6:Lcom/jcraft/jsch/Session;

    const-string v1, "md5"

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/HASH;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_28

    :catch_13
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getFingerPrint: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_28
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyExchange;->Hw()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->j6(Lcom/jcraft/jsch/HASH;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract j6(Lcom/jcraft/jsch/Session;[B[B[B[B)V
.end method

.method public abstract j6(Lcom/jcraft/jsch/Buffer;)Z
.end method

.method protected j6([B)[B
    .registers 6

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1a

    const/4 v0, 0x0

    aget-byte v2, p1, v0

    if-nez v2, :cond_1a

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_1a

    array-length v2, p1

    sub-int/2addr v2, v1

    new-array v3, v2, [B

    invoke-static {p1, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/KeyExchange;->j6([B)[B

    move-result-object p1

    :cond_1a
    return-object p1
.end method

.method v5()[B
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->FH:[B

    return-object v0
.end method
