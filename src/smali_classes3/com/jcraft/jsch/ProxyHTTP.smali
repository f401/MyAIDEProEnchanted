.class public Lcom/jcraft/jsch/ProxyHTTP;
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


# virtual methods
.method public DW()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->FH:Ljava/io/InputStream;

    return-object v0
.end method

.method public close()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->FH:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_7
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->Hw:Ljava/io/OutputStream;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_e
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->v5:Ljava/net/Socket;

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

    iput-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->FH:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->Hw:Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->v5:Ljava/net/Socket;

    return-void
.end method

.method public getSocket()Ljava/net/Socket;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->v5:Ljava/net/Socket;

    return-object v0
.end method

.method public j6()Ljava/io/OutputStream;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->Hw:Ljava/io/OutputStream;

    return-object v0
.end method

.method public j6(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V
    .registers 10

    const-string v0, ":"

    if-nez p1, :cond_1d

    :try_start_4
    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->j6:Ljava/lang/String;

    iget v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->DW:I

    invoke-static {p1, v1, p4}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->v5:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->FH:Ljava/io/InputStream;

    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->v5:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    :goto_1a
    iput-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->Hw:Ljava/io/OutputStream;

    goto :goto_34

    :cond_1d
    iget-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->j6:Ljava/lang/String;

    iget v2, p0, Lcom/jcraft/jsch/ProxyHTTP;->DW:I

    invoke-interface {p1, v1, v2}, Lcom/jcraft/jsch/SocketFactory;->j6(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->v5:Ljava/net/Socket;

    invoke-interface {p1, v1}, Lcom/jcraft/jsch/SocketFactory;->j6(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->FH:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->v5:Ljava/net/Socket;

    invoke-interface {p1, v1}, Lcom/jcraft/jsch/SocketFactory;->DW(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object p1

    goto :goto_1a

    :goto_34
    if-lez p4, :cond_3b

    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->v5:Ljava/net/Socket;

    invoke-virtual {p1, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_3b
    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->v5:Ljava/net/Socket;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->Hw:Ljava/io/OutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CONNECT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " HTTP/1.0\r\n"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->Zo:Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_65} :catch_15d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_65} :catch_13b

    const-string p2, "\r\n"

    const/4 p3, 0x0

    if-eqz p1, :cond_a5

    :try_start_6a
    iget-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->VH:Ljava/lang/String;

    if-eqz v1, :cond_a5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->VH:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    invoke-static {p1, p3, v0}, Lcom/jcraft/jsch/Util;->FH([BII)[B

    move-result-object p1

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->Hw:Ljava/io/OutputStream;

    const-string v1, "Proxy-Authorization: Basic "

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->Hw:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->Hw:Ljava/io/OutputStream;

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_a5
    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->Hw:Ljava/io/OutputStream;

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->Hw:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 p2, 0x0

    :goto_b9
    const/16 v0, 0xa

    const/16 v1, 0xd

    if-gez p2, :cond_c0

    goto :goto_d6

    :cond_c0
    iget-object p2, p0, Lcom/jcraft/jsch/ProxyHTTP;->FH:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p2

    if-eq p2, v1, :cond_cd

    int-to-char v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_b9

    :cond_cd
    iget-object p2, p0, Lcom/jcraft/jsch/ProxyHTTP;->FH:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p2

    if-eq p2, v0, :cond_d6

    goto :goto_b9

    :cond_d6
    :goto_d6
    if-ltz p2, :cond_135

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_dc
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_dc} :catch_15d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_dc} :catch_13b

    const/16 v2, 0x20

    const/4 v3, -0x1

    :try_start_df
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, p4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_f6} :catch_f7

    goto :goto_fa

    :catch_f7
    move-exception p1

    const-string p1, "Unknow reason"

    :goto_fa
    const/16 p4, 0xc8

    if-ne v3, p4, :cond_121

    :cond_fe
    const/4 p1, 0x0

    :goto_ff
    if-gez p2, :cond_102

    goto :goto_116

    :cond_102
    :try_start_102
    iget-object p2, p0, Lcom/jcraft/jsch/ProxyHTTP;->FH:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p2

    if-eq p2, v1, :cond_10d

    add-int/lit8 p1, p1, 0x1

    goto :goto_ff

    :cond_10d
    iget-object p2, p0, Lcom/jcraft/jsch/ProxyHTTP;->FH:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p2

    if-eq p2, v0, :cond_116

    goto :goto_ff

    :cond_116
    :goto_116
    if-ltz p2, :cond_11b

    if-nez p1, :cond_fe

    return-void

    :cond_11b
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_121
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "proxy error: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_135
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
    :try_end_13b
    .catch Ljava/lang/RuntimeException; {:try_start_102 .. :try_end_13b} :catch_15d
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_13b} :catch_13b

    :catch_13b
    move-exception p1

    :try_start_13c
    iget-object p2, p0, Lcom/jcraft/jsch/ProxyHTTP;->v5:Ljava/net/Socket;

    if-eqz p2, :cond_145

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_143} :catch_144

    goto :goto_145

    :catch_144
    move-exception p2

    :cond_145
    :goto_145
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ProxyHTTP: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_15d
    move-exception p1

    goto :goto_160

    :goto_15f
    throw p1

    :goto_160
    goto :goto_15f
.end method
