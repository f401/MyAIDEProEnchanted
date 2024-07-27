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

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->j6:Lcom/jcraft/jsch/Session;

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->DW:Lcom/jcraft/jsch/HASH;

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->FH:[B

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->Hw:[B

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->v5:[B

    return-void
.end method

.method protected static j6([B[B)[Ljava/lang/String;
    .registers 14

    const/16 v0, 0xa

    new-array v4, v0, [Ljava/lang/String;

    new-instance v6, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v6, p0}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    const/16 v0, 0x11

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->Hw(I)V

    new-instance v7, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v7, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    const/16 v0, 0x11

    invoke-virtual {v7, v0}, Lcom/jcraft/jsch/Buffer;->Hw(I)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    const/16 v0, 0x11

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->Hw(I)V

    const/16 v0, 0x11

    invoke-virtual {v7, v0}, Lcom/jcraft/jsch/Buffer;->Hw(I)V

    :cond_0
    const/4 v0, 0x0

    move v5, v0

    :goto_2
    const/16 v0, 0xa

    if-lt v5, v0, :cond_4

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "kex: server->client "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "kex: client->server "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_1
    move-object v0, v4

    :goto_3
    return-object v0

    :cond_2
    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "kex: client: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v3

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_3
    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "kex: server: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v3

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v8

    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v9

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v1

    :goto_4
    array-length v1, v9

    if-lt v2, v1, :cond_7

    :goto_5
    if-nez v2, :cond_e

    const-string v0, ""

    aput-object v0, v4, v5

    :cond_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    :cond_7
    array-length v1, v9

    if-ge v2, v1, :cond_8

    aget-byte v1, v9, v2

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_6

    :cond_8
    if-ne v0, v2, :cond_9

    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    sub-int v1, v2, v0

    invoke-static {v9, v0, v1}, Lcom/jcraft/jsch/Util;->j6([BII)Ljava/lang/String;

    move-result-object v10

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v3, v1

    :goto_6
    array-length v1, v8

    if-lt v3, v1, :cond_b

    add-int/lit8 v1, v2, 0x1

    move v0, v1

    move v2, v1

    goto :goto_4

    :cond_a
    add-int/lit8 v3, v3, 0x1

    :cond_b
    array-length v1, v8

    if-ge v3, v1, :cond_c

    aget-byte v1, v8, v3

    const/16 v11, 0x2c

    if-ne v1, v11, :cond_a

    :cond_c
    if-ne v0, v3, :cond_d

    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_d
    sub-int v1, v3, v0

    invoke-static {v8, v0, v1}, Lcom/jcraft/jsch/Util;->j6([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    aput-object v10, v4, v5

    goto :goto_5

    :cond_e
    aget-object v0, v4, v5

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_f
    add-int/lit8 v1, v3, 0x1

    move v0, v1

    move v3, v1

    goto :goto_6
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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyExchange;->Hw()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->j6(Lcom/jcraft/jsch/HASH;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
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

    goto :goto_0
.end method

.method public abstract j6(Lcom/jcraft/jsch/Session;[B[B[B[B)V
.end method

.method public abstract j6(Lcom/jcraft/jsch/Buffer;)Z
.end method

.method protected j6([B)[B
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    array-length v0, p1

    if-le v0, v2, :cond_0

    aget-byte v0, p1, v3

    if-nez v0, :cond_0

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    array-length v1, v0

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KeyExchange;->j6([B)[B

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method v5()[B
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->FH:[B

    return-object v0
.end method
