.class public Lcom/jcraft/jsch/ProxySOCKS4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/Proxy;


# instance fields
.field private DW:I

.field private FH:Ljava/io/InputStream;

.field private Hw:Ljava/io/OutputStream;

.field private Zo:Ljava/lang/String;

.field private j6:Ljava/lang/String;

.field private v5:Ljava/net/Socket;


# virtual methods
.method public DW()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->FH:Ljava/io/InputStream;

    return-object v0
.end method

.method public close()V
    .registers 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->FH:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->FH:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->Hw:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->Hw:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->v5:Ljava/net/Socket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->v5:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->FH:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->Hw:Ljava/io/OutputStream;

    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->v5:Ljava/net/Socket;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getSocket()Ljava/net/Socket;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->v5:Ljava/net/Socket;

    return-object v0
.end method

.method public j6()Ljava/io/OutputStream;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->Hw:Ljava/io/OutputStream;

    return-object v0
.end method

.method public j6(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V
    .registers 12

    const/4 v0, 0x4

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->j6:Ljava/lang/String;

    iget v3, p0, Lcom/jcraft/jsch/ProxySOCKS4;->DW:I

    invoke-static {v2, v3, p4}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->v5:Ljava/net/Socket;

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->v5:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->FH:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->v5:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->Hw:Ljava/io/OutputStream;

    :goto_0
    if-lez p4, :cond_0

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->v5:Ljava/net/Socket;

    invoke-virtual {v2, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_0
    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->v5:Ljava/net/Socket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/16 v2, 0x400

    new-array v3, v2, [B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    aput-byte v0, v3, v1

    aput-byte v6, v3, v6

    const/4 v2, 0x2

    ushr-int/lit8 v4, p3, 0x8

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    const/4 v2, 0x3

    and-int/lit16 v4, p3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    :try_start_1
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    move v2, v1

    :goto_1
    array-length v5, v4
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-lt v2, v5, :cond_8

    :try_start_2
    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->Zo:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->Zo:Ljava/lang/String;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/jcraft/jsch/ProxySOCKS4;->Zo:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v2, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->Zo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    aput-byte v1, v3, v0

    :try_start_3
    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->Hw:Ljava/io/OutputStream;

    const/4 v4, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move v0, v1

    :goto_2
    const/16 v2, 0x8

    if-lt v0, v2, :cond_6

    aget-byte v0, v3, v1

    if-nez v0, :cond_5

    aget-byte v0, v3, v6

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_3

    return-void

    :cond_2
    :try_start_4
    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->j6:Ljava/lang/String;

    iget v3, p0, Lcom/jcraft/jsch/ProxySOCKS4;->DW:I

    invoke-interface {p1, v2, v3}, Lcom/jcraft/jsch/SocketFactory;->j6(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->v5:Ljava/net/Socket;

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->v5:Ljava/net/Socket;

    invoke-interface {p1, v2}, Lcom/jcraft/jsch/SocketFactory;->j6(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->FH:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->v5:Ljava/net/Socket;

    invoke-interface {p1, v2}, Lcom/jcraft/jsch/SocketFactory;->DW(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->Hw:Ljava/io/OutputStream;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->v5:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :goto_3
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProxySOCKS4: server returns CD "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    aget-byte v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->v5:Ljava/net/Socket;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->v5:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_4
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ProxySOCKS4: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :try_start_8
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ProxySOCKS4: server returns VN "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-byte v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->FH:Ljava/io/InputStream;

    rsub-int/lit8 v4, v0, 0x8

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_7

    add-int/2addr v0, v2

    goto/16 :goto_2

    :cond_7
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "ProxySOCKS4: stream is closed"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :cond_8
    aget-byte v5, v4, v2

    aput-byte v5, v3, v0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :try_start_9
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ProxySOCKS4: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v0

    goto/16 :goto_3
.end method
