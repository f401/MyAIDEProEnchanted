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
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->FH:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_7
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->Hw:Ljava/io/OutputStream;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_e
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->v5:Ljava/net/Socket;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v0

    :cond_17
    :goto_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->FH:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->Hw:Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->v5:Ljava/net/Socket;

    return-void
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
    .registers 10

    const-string v0, "ProxySOCKS4: "

    if-nez p1, :cond_1d

    :try_start_4
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->j6:Ljava/lang/String;

    iget v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->DW:I

    invoke-static {p1, v1, p4}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->v5:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->FH:Ljava/io/InputStream;

    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->v5:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    :goto_1a
    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->Hw:Ljava/io/OutputStream;

    goto :goto_34

    :cond_1d
    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->j6:Ljava/lang/String;

    iget v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->DW:I

    invoke-interface {p1, v1, v2}, Lcom/jcraft/jsch/SocketFactory;->j6(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->v5:Ljava/net/Socket;

    invoke-interface {p1, v1}, Lcom/jcraft/jsch/SocketFactory;->j6(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->FH:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->v5:Ljava/net/Socket;

    invoke-interface {p1, v1}, Lcom/jcraft/jsch/SocketFactory;->DW(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object p1

    goto :goto_1a

    :goto_34
    if-lez p4, :cond_3b

    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->v5:Ljava/net/Socket;

    invoke-virtual {p1, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_3b
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->v5:Ljava/net/Socket;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/16 p1, 0x400

    new-array p1, p1, [B
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_45} :catch_11b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_45} :catch_fb

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput-byte v2, p1, v1

    aput-byte p4, p1, p4

    ushr-int/lit8 v3, p3, 0x8

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, p1, v4

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    const/4 v3, 0x3

    aput-byte p3, p1, v3

    :try_start_57
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p2

    const/4 p3, 0x0

    :goto_60
    array-length v3, p2
    :try_end_61
    .catch Ljava/net/UnknownHostException; {:try_start_57 .. :try_end_61} :catch_e4
    .catch Ljava/lang/RuntimeException; {:try_start_57 .. :try_end_61} :catch_11b
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_61} :catch_fb

    if-lt p3, v3, :cond_da

    :try_start_63
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->Zo:Ljava/lang/String;

    if-eqz p2, :cond_7b

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object p2

    iget-object p3, p0, Lcom/jcraft/jsch/ProxySOCKS4;->Zo:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p2, v1, p1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->Zo:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2
    :try_end_7a
    .catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_7a} :catch_11b
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_7a} :catch_fb

    add-int/2addr v2, p2

    :cond_7b
    aput-byte v1, p1, v2

    :try_start_7d
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->Hw:Ljava/io/OutputStream;

    add-int/2addr v2, p4

    invoke-virtual {p2, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_83
    .catch Ljava/lang/RuntimeException; {:try_start_7d .. :try_end_83} :catch_11b
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_83} :catch_fb

    const/4 p2, 0x0

    :goto_84
    const/16 p3, 0x8

    if-lt p2, p3, :cond_c6

    aget-byte p2, p1, v1

    if-nez p2, :cond_b0

    aget-byte p2, p1, p4

    const/16 p3, 0x5a

    if-ne p2, p3, :cond_93

    return-void

    :cond_93
    :try_start_93
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->v5:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_98} :catch_99

    goto :goto_9a

    :catch_99
    move-exception p2

    :goto_9a
    :try_start_9a
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ProxySOCKS4: server returns CD "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte p1, p1, p4

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b0
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "ProxySOCKS4: server returns VN "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte p1, p1, v1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_c6
    iget-object p3, p0, Lcom/jcraft/jsch/ProxySOCKS4;->FH:Ljava/io/InputStream;

    rsub-int/lit8 v2, p2, 0x8

    invoke-virtual {p3, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-lez p3, :cond_d2

    add-int/2addr p2, p3

    goto :goto_84

    :cond_d2
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "ProxySOCKS4: stream is closed"

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_da
    .catch Ljava/lang/RuntimeException; {:try_start_9a .. :try_end_da} :catch_11b
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_da} :catch_fb

    :cond_da
    aget-byte v3, p2, p3

    aput-byte v3, p1, v2

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_60

    :catch_e4
    move-exception p1

    :try_start_e5
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_fb
    .catch Ljava/lang/RuntimeException; {:try_start_e5 .. :try_end_fb} :catch_11b
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_fb} :catch_fb

    :catch_fb
    move-exception p1

    :try_start_fc
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->v5:Ljava/net/Socket;

    if-eqz p2, :cond_105

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_103} :catch_104

    goto :goto_105

    :catch_104
    move-exception p2

    :cond_105
    :goto_105
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_11b
    move-exception p1

    goto :goto_11e

    :goto_11d
    throw p1

    :goto_11e
    goto :goto_11d
.end method
