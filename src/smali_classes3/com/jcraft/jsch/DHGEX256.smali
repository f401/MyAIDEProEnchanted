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

    if-ne v0, v1, :cond_8

    const-string v0, "DSA"

    return-object v0

    :cond_8
    const-string v0, "RSA"

    return-object v0
.end method

.method public j6(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .registers 6

    iput-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->j6:Lcom/jcraft/jsch/Session;

    iput-object p2, p0, Lcom/jcraft/jsch/DHGEX256;->we:[B

    iput-object p3, p0, Lcom/jcraft/jsch/DHGEX256;->J0:[B

    iput-object p4, p0, Lcom/jcraft/jsch/DHGEX256;->J8:[B

    iput-object p5, p0, Lcom/jcraft/jsch/DHGEX256;->Ws:[B

    :try_start_a
    const-string p2, "sha-256"

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jcraft/jsch/HASH;

    iput-object p2, p0, Lcom/jcraft/jsch/KeyExchange;->DW:Lcom/jcraft/jsch/HASH;

    iget-object p2, p0, Lcom/jcraft/jsch/KeyExchange;->DW:Lcom/jcraft/jsch/HASH;

    invoke-interface {p2}, Lcom/jcraft/jsch/HASH;->DW()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_21} :catch_22

    goto :goto_28

    :catch_22
    move-exception p2

    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p3, p2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_28
    new-instance p2, Lcom/jcraft/jsch/Buffer;

    invoke-direct {p2}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object p2, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    new-instance p3, Lcom/jcraft/jsch/Packet;

    invoke-direct {p3, p2}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object p3, p0, Lcom/jcraft/jsch/DHGEX256;->XL:Lcom/jcraft/jsch/Packet;

    const-string p2, "dh"

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jcraft/jsch/DH;

    iput-object p2, p0, Lcom/jcraft/jsch/DHGEX256;->EQ:Lcom/jcraft/jsch/DH;

    invoke-interface {p2}, Lcom/jcraft/jsch/DH;->DW()V

    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX256;->XL:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p2}, Lcom/jcraft/jsch/Packet;->DW()V

    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    const/16 p3, 0x22

    invoke-virtual {p2, p3}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    sget p3, Lcom/jcraft/jsch/DHGEX256;->Zo:I

    invoke-virtual {p2, p3}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    sget p3, Lcom/jcraft/jsch/DHGEX256;->VH:I

    invoke-virtual {p2, p3}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    sget p3, Lcom/jcraft/jsch/DHGEX256;->gn:I

    invoke-virtual {p2, p3}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX256;->XL:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_b3

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "SSH_MSG_KEX_DH_GEX_REQUEST("

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p4, Lcom/jcraft/jsch/DHGEX256;->Zo:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "<"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p5, Lcom/jcraft/jsch/DHGEX256;->VH:I

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p4, Lcom/jcraft/jsch/DHGEX256;->gn:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ") sent"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string p3, "expecting SSH_MSG_KEX_DH_GEX_GROUP"

    invoke-interface {p1, p2, p3}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_b3
    const/16 p1, 0x1f

    iput p1, p0, Lcom/jcraft/jsch/DHGEX256;->tp:I

    return-void
.end method

.method public j6(Lcom/jcraft/jsch/Buffer;)Z
    .registers 15

    iget v0, p0, Lcom/jcraft/jsch/DHGEX256;->tp:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1f

    if-eq v0, v4, :cond_285

    if-eq v0, v1, :cond_d

    return v2

    :cond_d
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j6()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j6()I

    move-result v0

    if-eq v0, v1, :cond_2d

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "type: must be SSH_MSG_KEX_DH_GEX_REPLY "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v2

    :cond_2d
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->v5:[B

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->Zo()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object p1

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

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX256;->J0:[B

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX256;->we:[B

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX256;->Ws:[B

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX256;->J8:[B

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/KeyExchange;->v5:[B

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    sget v4, Lcom/jcraft/jsch/DHGEX256;->Zo:I

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    sget v4, Lcom/jcraft/jsch/DHGEX256;->VH:I

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    sget v4, Lcom/jcraft/jsch/DHGEX256;->gn:I

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX256;->aM:[B

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->FH([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX256;->j3:[B

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->FH([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX256;->Mr:[B

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->FH([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->FH([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->FH:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->FH([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->Hw()I

    move-result v0

    new-array v1, v0, [B

    iget-object v4, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4, v1}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/KeyExchange;->DW:Lcom/jcraft/jsch/HASH;

    invoke-interface {v4, v1, v2, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->DW:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->Hw:[B

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->v5:[B

    aget-byte v1, v0, v2

    shl-int/lit8 v1, v1, 0x18

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    aget-byte v5, v0, v3

    shl-int/lit8 v5, v5, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    or-int/2addr v1, v5

    const/4 v5, 0x2

    aget-byte v5, v0, v5

    shl-int/lit8 v5, v5, 0x8

    const v7, 0xff00

    and-int/2addr v5, v7

    or-int/2addr v1, v5

    const/4 v5, 0x3

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    const/4 v5, 0x4

    invoke-static {v0, v5, v1}, Lcom/jcraft/jsch/Util;->j6([BII)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v1, v5

    const-string v5, "ssh-rsa"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v8, 0x0

    if-eqz v5, :cond_18e

    iput v2, p0, Lcom/jcraft/jsch/DHGEX256;->u7:I

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->v5:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v1, v0, v1

    add-int/lit8 v9, v5, 0x1

    aget-byte v5, v0, v5

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, v0, v9

    add-int/lit8 v11, v10, 0x1

    shl-int/lit8 v5, v5, 0x10

    and-int/2addr v5, v6

    shl-int/lit8 v1, v1, 0x18

    and-int/2addr v1, v4

    or-int/2addr v1, v5

    shl-int/lit8 v5, v9, 0x8

    and-int/2addr v5, v7

    or-int/2addr v1, v5

    aget-byte v5, v0, v10

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    new-array v5, v1, [B

    invoke-static {v0, v11, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v11, v1

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->v5:[B

    add-int/lit8 v1, v11, 0x1

    aget-byte v9, v0, v11

    add-int/lit8 v10, v1, 0x1

    aget-byte v1, v0, v1

    add-int/lit8 v11, v10, 0x1

    shl-int/lit8 v1, v1, 0x10

    and-int/2addr v1, v6

    shl-int/lit8 v6, v9, 0x18

    and-int/2addr v4, v6

    or-int/2addr v1, v4

    aget-byte v4, v0, v10

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v7

    or-int/2addr v1, v4

    aget-byte v4, v0, v11

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    new-array v4, v1, [B

    add-int/2addr v11, v3

    invoke-static {v0, v11, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_140
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->j6:Lcom/jcraft/jsch/Session;

    const-string v1, "signature.rsa"

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureRSA;
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_152} :catch_159

    :try_start_152
    invoke-interface {v0}, Lcom/jcraft/jsch/Signature;->DW()V
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_155} :catch_156

    goto :goto_161

    :catch_156
    move-exception v1

    move-object v8, v0

    goto :goto_15b

    :catch_159
    move-exception v0

    move-object v1, v0

    :goto_15b
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    move-object v0, v8

    :goto_161
    invoke-interface {v0, v5, v4}, Lcom/jcraft/jsch/SignatureRSA;->j6([B[B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->Hw:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Signature;->DW([B)V

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/Signature;->j6([B)Z

    move-result p1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_282

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "ssh_rsa_verify: signature "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_182
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    goto/16 :goto_282

    :cond_18e
    const-string v5, "ssh-dss"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27a

    iput v3, p0, Lcom/jcraft/jsch/DHGEX256;->u7:I

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->v5:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v1, v0, v1

    add-int/lit8 v9, v5, 0x1

    aget-byte v5, v0, v5

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, v0, v9

    add-int/lit8 v11, v10, 0x1

    shl-int/lit8 v5, v5, 0x10

    and-int/2addr v5, v6

    shl-int/lit8 v1, v1, 0x18

    and-int/2addr v1, v4

    or-int/2addr v1, v5

    shl-int/lit8 v5, v9, 0x8

    and-int/2addr v5, v7

    or-int/2addr v1, v5

    aget-byte v5, v0, v10

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    new-array v5, v1, [B

    invoke-static {v0, v11, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v11, v1

    iput-object v5, p0, Lcom/jcraft/jsch/DHGEX256;->aM:[B

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->v5:[B

    add-int/lit8 v1, v11, 0x1

    aget-byte v5, v0, v11

    add-int/lit8 v9, v1, 0x1

    aget-byte v1, v0, v1

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, v0, v9

    add-int/lit8 v11, v10, 0x1

    shl-int/lit8 v1, v1, 0x10

    and-int/2addr v1, v6

    shl-int/lit8 v5, v5, 0x18

    and-int/2addr v5, v4

    or-int/2addr v1, v5

    shl-int/lit8 v5, v9, 0x8

    and-int/2addr v5, v7

    or-int/2addr v1, v5

    aget-byte v5, v0, v10

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    new-array v5, v1, [B

    invoke-static {v0, v11, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v11, v1

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->v5:[B

    add-int/lit8 v1, v11, 0x1

    aget-byte v9, v0, v11

    add-int/lit8 v10, v1, 0x1

    aget-byte v1, v0, v1

    add-int/lit8 v11, v10, 0x1

    aget-byte v10, v0, v10

    add-int/lit8 v12, v11, 0x1

    shl-int/lit8 v1, v1, 0x10

    and-int/2addr v1, v6

    shl-int/lit8 v9, v9, 0x18

    and-int/2addr v9, v4

    or-int/2addr v1, v9

    shl-int/lit8 v9, v10, 0x8

    and-int/2addr v9, v7

    or-int/2addr v1, v9

    aget-byte v9, v0, v11

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v1, v9

    new-array v9, v1, [B

    invoke-static {v0, v12, v9, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v12, v1

    iput-object v9, p0, Lcom/jcraft/jsch/DHGEX256;->j3:[B

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->v5:[B

    add-int/lit8 v1, v12, 0x1

    aget-byte v9, v0, v12

    add-int/lit8 v10, v1, 0x1

    aget-byte v1, v0, v1

    add-int/lit8 v11, v10, 0x1

    shl-int/lit8 v1, v1, 0x10

    and-int/2addr v1, v6

    shl-int/lit8 v6, v9, 0x18

    and-int/2addr v4, v6

    or-int/2addr v1, v4

    aget-byte v4, v0, v10

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v7

    or-int/2addr v1, v4

    aget-byte v4, v0, v11

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    new-array v4, v1, [B

    add-int/2addr v11, v3

    invoke-static {v0, v11, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_232
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->j6:Lcom/jcraft/jsch/Session;

    const-string v1, "signature.dss"

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureDSA;
    :try_end_244
    .catch Ljava/lang/Exception; {:try_start_232 .. :try_end_244} :catch_24b

    :try_start_244
    invoke-interface {v0}, Lcom/jcraft/jsch/Signature;->DW()V
    :try_end_247
    .catch Ljava/lang/Exception; {:try_start_244 .. :try_end_247} :catch_248

    goto :goto_253

    :catch_248
    move-exception v1

    move-object v8, v0

    goto :goto_24d

    :catch_24b
    move-exception v0

    move-object v1, v0

    :goto_24d
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    move-object v0, v8

    :goto_253
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->aM:[B

    iget-object v6, p0, Lcom/jcraft/jsch/DHGEX256;->j3:[B

    invoke-interface {v0, v4, v1, v5, v6}, Lcom/jcraft/jsch/SignatureDSA;->DW([B[B[B[B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->Hw:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Signature;->DW([B)V

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/Signature;->j6([B)Z

    move-result p1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_282

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "ssh_dss_verify: signature "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_182

    :cond_27a
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "unknown alg"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_282
    :goto_282
    iput v2, p0, Lcom/jcraft/jsch/DHGEX256;->tp:I

    return p1

    :cond_285
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j6()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j6()I

    move-result v0

    if-eq v0, v4, :cond_29c

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "type: must be SSH_MSG_KEX_DH_GEX_GROUP "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_22

    :cond_29c
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->Zo()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->aM:[B

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->Zo()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/DHGEX256;->j3:[B

    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX256;->EQ:Lcom/jcraft/jsch/DH;

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->aM:[B

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/DH;->FH([B)V

    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX256;->EQ:Lcom/jcraft/jsch/DH;

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->j3:[B

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/DH;->j6([B)V

    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX256;->EQ:Lcom/jcraft/jsch/DH;

    invoke-interface {p1}, Lcom/jcraft/jsch/DH;->j6()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/DHGEX256;->Mr:[B

    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX256;->XL:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Packet;->DW()V

    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX256;->QX:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->Mr:[B

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->FH([B)V

    iget-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->j6:Lcom/jcraft/jsch/Session;

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->XL:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_2f4

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string v0, "SSH_MSG_KEX_DH_GEX_INIT sent"

    invoke-interface {p1, v3, v0}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string v0, "expecting SSH_MSG_KEX_DH_GEX_REPLY"

    invoke-interface {p1, v3, v0}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_2f4
    iput v1, p0, Lcom/jcraft/jsch/DHGEX256;->tp:I

    return v3
.end method
