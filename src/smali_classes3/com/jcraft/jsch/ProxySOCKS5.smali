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

    :goto_1
    if-lt v0, p3, :cond_4

    return-void

    :cond_4
    sub-int v1, p3, v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_e

    add-int/2addr v0, v1

    goto :goto_1

    :cond_e
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "ProxySOCKS5: stream is closed"

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    goto :goto_17

    :goto_16
    throw p1

    :goto_17
    goto :goto_16
.end method


# virtual methods
.method public DW()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->FH:Ljava/io/InputStream;

    return-object v0
.end method

.method public close()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->FH:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_7
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->Hw:Ljava/io/OutputStream;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_e
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

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

    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->FH:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->Hw:Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    return-void
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
    .registers 13

    if-nez p1, :cond_1b

    :try_start_2
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->j6:Ljava/lang/String;

    iget v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->DW:I

    invoke-static {p1, v0, p4}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->FH:Ljava/io/InputStream;

    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    :goto_18
    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->Hw:Ljava/io/OutputStream;

    goto :goto_32

    :cond_1b
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->j6:Ljava/lang/String;

    iget v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->DW:I

    invoke-interface {p1, v0, v1}, Lcom/jcraft/jsch/SocketFactory;->j6(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/SocketFactory;->j6(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->FH:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/SocketFactory;->DW(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object p1

    goto :goto_18

    :goto_32
    if-lez p4, :cond_39

    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    invoke-virtual {p1, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_39
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/16 p1, 0x400

    new-array p1, p1, [B
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_43} :catch_167
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_43} :catch_145

    const/4 v0, 0x0

    const/4 v1, 0x5

    aput-byte v1, p1, v0

    const/4 v2, 0x2

    aput-byte v2, p1, p4

    aput-byte v0, p1, v2

    const/4 v3, 0x3

    aput-byte v2, p1, v3

    :try_start_4f
    iget-object v4, p0, Lcom/jcraft/jsch/ProxySOCKS5;->Hw:Ljava/io/OutputStream;

    const/4 v5, 0x4

    invoke-virtual {v4, p1, v0, v5}, Ljava/io/OutputStream;->write([BII)V

    iget-object v4, p0, Lcom/jcraft/jsch/ProxySOCKS5;->FH:Ljava/io/InputStream;

    invoke-direct {p0, v4, p1, v2}, Lcom/jcraft/jsch/ProxySOCKS5;->j6(Ljava/io/InputStream;[BI)V
    :try_end_5a
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_5a} :catch_167
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5a} :catch_145

    aget-byte v4, p1, p4

    and-int/lit16 v4, v4, 0xff

    if-eqz v4, :cond_bd

    if-eq v4, v2, :cond_63

    goto :goto_bb

    :cond_63
    :try_start_63
    iget-object v4, p0, Lcom/jcraft/jsch/ProxySOCKS5;->Zo:Ljava/lang/String;

    if-eqz v4, :cond_bb

    iget-object v6, p0, Lcom/jcraft/jsch/ProxySOCKS5;->VH:Ljava/lang/String;
    :try_end_69
    .catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_69} :catch_167
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_69} :catch_145

    if-nez v6, :cond_6c

    goto :goto_bb

    :cond_6c
    aput-byte p4, p1, v0

    :try_start_6e
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, p1, p4

    iget-object v4, p0, Lcom/jcraft/jsch/ProxySOCKS5;->Zo:Ljava/lang/String;

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v6, p0, Lcom/jcraft/jsch/ProxySOCKS5;->Zo:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v4, v0, p1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/jcraft/jsch/ProxySOCKS5;->Zo:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lcom/jcraft/jsch/ProxySOCKS5;->VH:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    iget-object v4, p0, Lcom/jcraft/jsch/ProxySOCKS5;->VH:Ljava/lang/String;

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v7, p0, Lcom/jcraft/jsch/ProxySOCKS5;->VH:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v4, v0, p1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/jcraft/jsch/ProxySOCKS5;->VH:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v7, p0, Lcom/jcraft/jsch/ProxySOCKS5;->Hw:Ljava/io/OutputStream;

    add-int/2addr v6, v4

    invoke-virtual {v7, p1, v0, v6}, Ljava/io/OutputStream;->write([BII)V

    iget-object v4, p0, Lcom/jcraft/jsch/ProxySOCKS5;->FH:Ljava/io/InputStream;

    invoke-direct {p0, v4, p1, v2}, Lcom/jcraft/jsch/ProxySOCKS5;->j6(Ljava/io/InputStream;[BI)V
    :try_end_b6
    .catch Ljava/lang/RuntimeException; {:try_start_6e .. :try_end_b6} :catch_167
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_b6} :catch_145

    aget-byte v4, p1, p4

    if-nez v4, :cond_bb

    goto :goto_bd

    :cond_bb
    :goto_bb
    const/4 v4, 0x0

    goto :goto_be

    :cond_bd
    :goto_bd
    const/4 v4, 0x1

    :goto_be
    if-eqz v4, :cond_136

    aput-byte v1, p1, v0

    aput-byte p4, p1, p4

    aput-byte v0, p1, v2

    :try_start_c6
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object p2

    array-length v4, p2
    :try_end_cb
    .catch Ljava/lang/RuntimeException; {:try_start_c6 .. :try_end_cb} :catch_167
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_cb} :catch_145

    aput-byte v3, p1, v3

    int-to-byte v6, v4

    aput-byte v6, p1, v5

    :try_start_d0
    invoke-static {p2, v0, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_d3
    .catch Ljava/lang/RuntimeException; {:try_start_d0 .. :try_end_d3} :catch_167
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d3} :catch_145

    add-int/2addr v4, v1

    add-int/lit8 p2, v4, 0x1

    ushr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v4

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    :try_start_e0
    iget-object p3, p0, Lcom/jcraft/jsch/ProxySOCKS5;->Hw:Ljava/io/OutputStream;

    add-int/2addr p2, p4

    invoke-virtual {p3, p1, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->FH:Ljava/io/InputStream;

    invoke-direct {p0, p2, p1, v5}, Lcom/jcraft/jsch/ProxySOCKS5;->j6(Ljava/io/InputStream;[BI)V
    :try_end_eb
    .catch Ljava/lang/RuntimeException; {:try_start_e0 .. :try_end_eb} :catch_167
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_eb} :catch_145

    aget-byte p2, p1, p4

    if-nez p2, :cond_119

    aget-byte p2, p1, v3

    and-int/lit16 p2, p2, 0xff

    if-eq p2, p4, :cond_112

    if-eq p2, v3, :cond_102

    if-eq p2, v5, :cond_fa

    goto :goto_118

    :cond_fa
    :try_start_fa
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->FH:Ljava/io/InputStream;

    const/16 p3, 0x12

    invoke-direct {p0, p2, p1, p3}, Lcom/jcraft/jsch/ProxySOCKS5;->j6(Ljava/io/InputStream;[BI)V

    goto :goto_118

    :cond_102
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->FH:Ljava/io/InputStream;

    invoke-direct {p0, p2, p1, p4}, Lcom/jcraft/jsch/ProxySOCKS5;->j6(Ljava/io/InputStream;[BI)V

    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->FH:Ljava/io/InputStream;

    aget-byte p3, p1, v0

    and-int/lit16 p3, p3, 0xff

    add-int/2addr p3, v2

    invoke-direct {p0, p2, p1, p3}, Lcom/jcraft/jsch/ProxySOCKS5;->j6(Ljava/io/InputStream;[BI)V

    goto :goto_118

    :cond_112
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->FH:Ljava/io/InputStream;

    const/4 p3, 0x6

    invoke-direct {p0, p2, p1, p3}, Lcom/jcraft/jsch/ProxySOCKS5;->j6(Ljava/io/InputStream;[BI)V
    :try_end_118
    .catch Ljava/lang/RuntimeException; {:try_start_fa .. :try_end_118} :catch_167
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_118} :catch_145

    :goto_118
    return-void

    :cond_119
    :try_start_119
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_11e} :catch_11f

    goto :goto_120

    :catch_11f
    move-exception p2

    :goto_120
    :try_start_120
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "ProxySOCKS5: server returns "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte p1, p1, p4

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_136
    .catch Ljava/lang/RuntimeException; {:try_start_120 .. :try_end_136} :catch_167
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_136} :catch_145

    :cond_136
    :try_start_136
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_13b} :catch_13c

    goto :goto_13d

    :catch_13c
    move-exception p1

    :goto_13d
    :try_start_13d
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "fail in SOCKS5 proxy"

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_145
    .catch Ljava/lang/RuntimeException; {:try_start_13d .. :try_end_145} :catch_167
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_145} :catch_145

    :catch_145
    move-exception p1

    :try_start_146
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->v5:Ljava/net/Socket;

    if-eqz p2, :cond_14f

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_14d} :catch_14e

    goto :goto_14f

    :catch_14e
    move-exception p2

    :cond_14f
    :goto_14f
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ProxySOCKS5: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_167
    move-exception p1

    goto :goto_16a

    :goto_169
    throw p1

    :goto_16a
    goto :goto_169
.end method
