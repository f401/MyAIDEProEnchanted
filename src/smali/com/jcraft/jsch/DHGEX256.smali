.class public Lcom/jcraft/jsch/DHGEX256;
.super Lcom/jcraft/jsch/KeyExchange;


# static fields
.field static VH:I = 0x400

.field static Zo:I = 0x400

.field static gn:I = 0x400


# instance fields
.field EQ:Lcom/jcraft/jsch/DH;

.field J0:[B

.field J8:[B

.field private Mr:[B

.field private QX:Lcom/jcraft/jsch/Buffer;

.field Ws:[B

.field private XL:Lcom/jcraft/jsch/Packet;

.field private aM:[B

.field private j3:[B

.field private tp:I

.field private u7:I

.field we:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyExchange;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/DHGEX256;->u7:I

    return-void
.end method


# virtual methods
.method public VH()I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/DHGEX256;->tp:I

    return v0
.end method

.method public Zo()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/jcraft/jsch/DHGEX256;->u7:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "DSA"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "RSA"

    goto :goto_0
.end method

.method public j6(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .registers 10

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->j6:Lcom/jcraft/jsch/Session;

    iput-object p2, p0, Lcom/jcraft/jsch/DHGEX256;->we:[B

    iput-object p3, p0, Lcom/jcraft/jsch/DHGEX256;->J0:[B

    iput-object p4, p0, Lcom/jcraft/jsch/DHGEX256;->J8:[B

    iput-object p5, p0, Lcom/jcraft/jsch/DHGEX256;->Ws:[B

    :try_start_0
    const-string v0, "sha-256"

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/HASH;

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->DW:Lcom/jcraft/jsch/HASH;

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->DW:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->DW()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->XL:Lcom/jcraft/jsch/Packet;

    :try_start_1
    const-string v0, "dh"

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/DH;

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->EQ:Lcom/jcraft/jsch/DH;

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->EQ:Lcom/jcraft/jsch/DH;

    invoke-interface {v0}, Lcom/jcraft/jsch/DH;->DW()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->XL:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->DW()V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    sget v1, Lcom/jcraft/jsch/DHGEX256;->Zo:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    sget v1, Lcom/jcraft/jsch/DHGEX256;->VH:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    sget v1, Lcom/jcraft/jsch/DHGEX256;->gn:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->XL:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SSH_MSG_KEX_DH_GEX_REQUEST("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/jcraft/jsch/DHGEX256;->Zo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/jcraft/jsch/DHGEX256;->VH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/jcraft/jsch/DHGEX256;->gn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") sent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "expecting SSH_MSG_KEX_DH_GEX_GROUP"

    invoke-interface {v0, v3, v1}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_0
    const/16 v0, 0x1f

    iput v0, p0, Lcom/jcraft/jsch/DHGEX256;->tp:I

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    throw v0
.end method

.method public j6(Lcom/jcraft/jsch/Buffer;)Z
    .registers 15

    const/high16 v12, 0xff0000

    const v11, 0xff00

    const/high16 v10, -0x1000000

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/jcraft/jsch/DHGEX256;->tp:I

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_5

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j6()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j6()I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "type: must be SSH_MSG_KEX_DH_GEX_REPLY "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->v5:[B

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->Zo()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v5

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->EQ:Lcom/jcraft/jsch/DH;

    invoke-interface {v1, v0}, Lcom/jcraft/jsch/DH;->DW([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->EQ:Lcom/jcraft/jsch/DH;

    invoke-interface {v1}, Lcom/jcraft/jsch/DH;->FH()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyExchange;->j6([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->FH:[B

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->we()V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX256;->J0:[B

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX256;->we:[B

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX256;->Ws:[B

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX256;->J8:[B

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->v5:[B

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    sget v2, Lcom/jcraft/jsch/DHGEX256;->Zo:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    sget v2, Lcom/jcraft/jsch/DHGEX256;->VH:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    sget v2, Lcom/jcraft/jsch/DHGEX256;->gn:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX256;->aM:[B

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->FH([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX256;->j3:[B

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->FH([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX256;->Mr:[B

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->FH([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->FH([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->FH:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->FH([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->Hw()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->DW:Lcom/jcraft/jsch/HASH;

    array-length v2, v0

    invoke-interface {v1, v0, v3, v2}, Lcom/jcraft/jsch/HASH;->update([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->DW:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->Hw:[B

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->v5:[B

    aget-byte v1, v0, v3

    shl-int/lit8 v1, v1, 0x18

    and-int/2addr v1, v10

    aget-byte v2, v0, v4

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v12

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v11

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lcom/jcraft/jsch/Util;->j6([BII)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x4

    const-string v2, "ssh-rsa"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput v3, p0, Lcom/jcraft/jsch/DHGEX256;->u7:I

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->v5:[B

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, v0, v2

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v0, v6

    add-int/lit8 v8, v7, 0x1

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v12

    shl-int/lit8 v1, v1, 0x18

    and-int/2addr v1, v10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v6, 0x8

    and-int/2addr v2, v11

    or-int/2addr v1, v2

    aget-byte v2, v0, v7

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    new-array v6, v1, [B

    invoke-static {v0, v8, v6, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v8, v1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->v5:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    add-int/lit8 v7, v2, 0x1

    aget-byte v2, v1, v2

    add-int/lit8 v8, v7, 0x1

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v12

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v10

    or-int/2addr v0, v2

    aget-byte v2, v1, v7

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v11

    or-int/2addr v0, v2

    aget-byte v2, v1, v8

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    new-array v7, v0, [B

    add-int/lit8 v2, v8, 0x1

    invoke-static {v1, v2, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->j6:Lcom/jcraft/jsch/Session;

    const-string v1, "signature.rsa"

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureRSA;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v0}, Lcom/jcraft/jsch/Signature;->DW()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    invoke-interface {v0, v6, v7}, Lcom/jcraft/jsch/SignatureRSA;->j6([B[B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->Hw:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Signature;->DW([B)V

    invoke-interface {v0, v5}, Lcom/jcraft/jsch/Signature;->j6([B)Z

    move-result v0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "ssh_rsa_verify: signature "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_2
    :goto_2
    iput v3, p0, Lcom/jcraft/jsch/DHGEX256;->tp:I

    move v3, v0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_3
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    move-object v1, v0

    goto :goto_3

    :cond_3
    const-string v2, "ssh-dss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput v4, p0, Lcom/jcraft/jsch/DHGEX256;->u7:I

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->v5:[B

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, v0, v2

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v0, v6

    add-int/lit8 v8, v7, 0x1

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v12

    shl-int/lit8 v1, v1, 0x18

    and-int/2addr v1, v10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v6, 0x8

    and-int/2addr v2, v11

    or-int/2addr v1, v2

    aget-byte v2, v0, v7

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    new-array v2, v1, [B

    invoke-static {v0, v8, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v8, v1

    iput-object v2, p0, Lcom/jcraft/jsch/DHGEX256;->aM:[B

    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->v5:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, v1, v2

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v1, v6

    add-int/lit8 v8, v7, 0x1

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v12

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v10

    or-int/2addr v0, v2

    shl-int/lit8 v2, v6, 0x8

    and-int/2addr v2, v11

    or-int/2addr v0, v2

    aget-byte v2, v1, v7

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    new-array v6, v0, [B

    invoke-static {v1, v8, v6, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v8

    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->v5:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    add-int/lit8 v7, v2, 0x1

    aget-byte v2, v1, v2

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v1, v7

    add-int/lit8 v9, v8, 0x1

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v12

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v10

    or-int/2addr v0, v2

    shl-int/lit8 v2, v7, 0x8

    and-int/2addr v2, v11

    or-int/2addr v0, v2

    aget-byte v2, v1, v8

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    new-array v2, v0, [B

    invoke-static {v1, v9, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v9

    iput-object v2, p0, Lcom/jcraft/jsch/DHGEX256;->j3:[B

    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->v5:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    add-int/lit8 v7, v2, 0x1

    aget-byte v2, v1, v2

    add-int/lit8 v8, v7, 0x1

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v12

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v10

    or-int/2addr v0, v2

    aget-byte v2, v1, v7

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v11

    or-int/2addr v0, v2

    aget-byte v2, v1, v8

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    new-array v7, v0, [B

    add-int/lit8 v2, v8, 0x1

    invoke-static {v1, v2, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->j6:Lcom/jcraft/jsch/Session;

    const-string v1, "signature.dss"

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureDSA;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-interface {v0}, Lcom/jcraft/jsch/Signature;->DW()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->aM:[B

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX256;->j3:[B

    invoke-interface {v0, v7, v1, v6, v2}, Lcom/jcraft/jsch/SignatureDSA;->DW([B[B[B[B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->Hw:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Signature;->DW([B)V

    invoke-interface {v0, v5}, Lcom/jcraft/jsch/Signature;->j6([B)Z

    move-result v0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "ssh_dss_verify: signature "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    goto/16 :goto_2

    :catch_2
    move-exception v1

    move-object v2, v0

    :goto_5
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_4

    :catch_3
    move-exception v0

    const/4 v2, 0x0

    move-object v1, v0

    goto :goto_5

    :cond_4
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "unknown alg"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j6()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j6()I

    move-result v0

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_6

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "type: must be SSH_MSG_KEX_DH_GEX_GROUP "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->Zo()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->aM:[B

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->Zo()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->j3:[B

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->EQ:Lcom/jcraft/jsch/DH;

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->aM:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/DH;->FH([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->EQ:Lcom/jcraft/jsch/DH;

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->j3:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/DH;->j6([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->EQ:Lcom/jcraft/jsch/DH;

    invoke-interface {v0}, Lcom/jcraft/jsch/DH;->j6()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->Mr:[B

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->XL:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->DW()V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->Mr:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->FH([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->j6:Lcom/jcraft/jsch/Session;

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->XL:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "SSH_MSG_KEX_DH_GEX_INIT sent"

    invoke-interface {v0, v4, v1}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "expecting SSH_MSG_KEX_DH_GEX_REPLY"

    invoke-interface {v0, v4, v1}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_7
    const/16 v0, 0x21

    iput v0, p0, Lcom/jcraft/jsch/DHGEX256;->tp:I

    move v3, v4

    goto/16 :goto_0
.end method
