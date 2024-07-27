.class public Lcom/jcraft/jsch/ProxySOCKS5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/Proxy;


# instance fields
.field private DW:I

.field private FH:Ljava/io/InputStream;

.field private Hw:Ljava/io/OutputStream;

.field private VH:Ljava/lang/String;

.field private Zo:Ljava/lang/String;

.field private j6:Ljava/lang/String;

.field private v5:Ljava/net/Socket;


# direct methods
.method private j6(Ljava/io/InputStream;[BI)V
    .registers 6

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_0

    return-void

    :cond_0
    sub-int v1, p3, v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "ProxySOCKS5: stream is closed"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DW()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->FH:Ljava/io/InputStream;

    return-object v0
.end method

.method public close()V
    .registers 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->FH:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->FH:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->Hw:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->Hw:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->FH:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->Hw:Ljava/io/OutputStream;

    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getSocket()Ljava/net/Socket;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    return-object v0
.end method

.method public j6()Ljava/io/OutputStream;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->Hw:Ljava/io/OutputStream;

    return-object v0
.end method

.method public j6(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V
    .registers 15

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->j6:Ljava/lang/String;

    iget v3, p0, Lcom/jcraft/jsch/ProxySOCKS5;->DW:I

    invoke-static {v0, v3, p4}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->FH:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->Hw:Ljava/io/OutputStream;

    :goto_0
    if-lez p4, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    invoke-virtual {v0, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/16 v0, 0x400

    new-array v3, v0, [B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x5

    aput-byte v0, v3, v1

    aput-byte v7, v3, v2

    aput-byte v1, v3, v7

    aput-byte v7, v3, v8

    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->Hw:Ljava/io/OutputStream;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->FH:Ljava/io/InputStream;

    const/4 v4, 0x2

    invoke-direct {p0, v0, v3, v4}, Lcom/jcraft/jsch/ProxySOCKS5;->j6(Ljava/io/InputStream;[BI)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    aget-byte v0, v3, v2

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_4

    if-eq v0, v7, :cond_3

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_a

    const/4 v0, 0x5

    aput-byte v0, v3, v1

    aput-byte v2, v3, v2

    aput-byte v1, v3, v7

    :try_start_2
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    aput-byte v8, v3, v8

    int-to-byte v4, v1

    aput-byte v4, v3, v9

    const/4 v4, 0x0

    const/4 v5, 0x5

    :try_start_3
    invoke-static {v0, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v0, v1, 0x5

    add-int/lit8 v1, v0, 0x1

    ushr-int/lit8 v4, p3, 0x8

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    and-int/lit16 v0, p3, 0xff

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    :try_start_4
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->Hw:Ljava/io/OutputStream;

    const/4 v4, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->FH:Ljava/io/InputStream;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v3, v1}, Lcom/jcraft/jsch/ProxySOCKS5;->j6(Ljava/io/InputStream;[BI)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    aget-byte v0, v3, v2

    if-nez v0, :cond_9

    aget-byte v0, v3, v8

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v2, :cond_8

    if-eq v0, v8, :cond_7

    if-eq v0, v9, :cond_5

    :goto_2
    return-void

    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->j6:Ljava/lang/String;

    iget v3, p0, Lcom/jcraft/jsch/ProxySOCKS5;->DW:I

    invoke-interface {p1, v0, v3}, Lcom/jcraft/jsch/SocketFactory;->j6(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/SocketFactory;->j6(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->FH:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/SocketFactory;->DW(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->Hw:Ljava/io/OutputStream;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_3
    :try_start_6
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->Zo:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->VH:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    if-eqz v0, :cond_1

    aput-byte v2, v3, v1

    const/4 v0, 0x1

    :try_start_7
    iget-object v4, p0, Lcom/jcraft/jsch/ProxySOCKS5;->Zo:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->Zo:Ljava/lang/String;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/jcraft/jsch/ProxySOCKS5;->Zo:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->Zo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/jcraft/jsch/ProxySOCKS5;->VH:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->VH:Ljava/lang/String;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/jcraft/jsch/ProxySOCKS5;->VH:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v0, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->VH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v5, p0, Lcom/jcraft/jsch/ProxySOCKS5;->Hw:Ljava/io/OutputStream;

    const/4 v6, 0x0

    add-int/2addr v0, v4

    invoke-virtual {v5, v3, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->FH:Ljava/io/InputStream;

    const/4 v4, 0x2

    invoke-direct {p0, v0, v3, v4}, Lcom/jcraft/jsch/ProxySOCKS5;->j6(Ljava/io/InputStream;[BI)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    aget-byte v0, v3, v2

    if-nez v0, :cond_1

    :cond_4
    move v0, v2

    goto/16 :goto_1

    :cond_5
    :try_start_8
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->FH:Ljava/io/InputStream;

    const/16 v1, 0x12

    invoke-direct {p0, v0, v3, v1}, Lcom/jcraft/jsch/ProxySOCKS5;->j6(Ljava/io/InputStream;[BI)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_9
    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :cond_6
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ProxySOCKS5: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_7
    :try_start_a
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->FH:Ljava/io/InputStream;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v3, v1}, Lcom/jcraft/jsch/ProxySOCKS5;->j6(Ljava/io/InputStream;[BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->FH:Ljava/io/InputStream;

    const/4 v1, 0x0

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v3, v1}, Lcom/jcraft/jsch/ProxySOCKS5;->j6(Ljava/io/InputStream;[BI)V

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->FH:Ljava/io/InputStream;

    const/4 v1, 0x6

    invoke-direct {p0, v0, v3, v1}, Lcom/jcraft/jsch/ProxySOCKS5;->j6(Ljava/io/InputStream;[BI)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_2

    :cond_9
    :try_start_b
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :goto_4
    :try_start_c
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ProxySOCKS5: server returns "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget-byte v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    :cond_a
    :try_start_d
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    :goto_5
    :try_start_e
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "fail in SOCKS5 proxy"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4
.end method
