.class public Lcom/jcraft/jsch/Packet;
.super Ljava/lang/Object;


# static fields
.field private static j6:Lcom/jcraft/jsch/Random;


# instance fields
.field DW:Lcom/jcraft/jsch/Buffer;

.field FH:[B


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/Buffer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Packet;->FH:[B

    iput-object p1, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    return-void
.end method

.method static j6(Lcom/jcraft/jsch/Random;)V
    .registers 1

    sput-object p0, Lcom/jcraft/jsch/Packet;->j6:Lcom/jcraft/jsch/Random;

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 3

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x5

    iput v1, v0, Lcom/jcraft/jsch/Buffer;->FH:I

    return-void
.end method

.method j6(III)I
    .registers 11

    const/4 v6, 0x0

    add-int/lit8 v0, p1, 0x5

    add-int/lit8 v1, v0, 0x9

    neg-int v0, v1

    add-int/lit8 v2, p2, -0x1

    and-int/2addr v0, v2

    if-ge v0, p2, :cond_0

    add-int/2addr v0, p2

    :cond_0
    add-int/2addr v0, v1

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x20

    iget-object v2, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v2, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v4, v3

    iget v2, v2, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int v5, v0, v2

    add-int/lit8 v5, v5, -0x5

    add-int/lit8 v5, v5, -0x9

    sub-int/2addr v5, p1

    if-ge v4, v5, :cond_1

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x5

    add-int/lit8 v2, v2, -0x9

    sub-int/2addr v2, p1

    new-array v2, v2, [B

    array-length v4, v3

    invoke-static {v3, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iput-object v2, v3, Lcom/jcraft/jsch/Buffer;->DW:[B

    :cond_1
    iget-object v2, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v2, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v2, v2, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/lit8 v2, v2, -0x5

    add-int/lit8 v2, v2, -0x9

    sub-int/2addr v2, p1

    invoke-static {v3, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    const/16 v3, 0xa

    iput v3, v2, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-virtual {v2, p1}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v2, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iput v1, v2, Lcom/jcraft/jsch/Buffer;->FH:I

    return v0
.end method

.method j6()Lcom/jcraft/jsch/Buffer;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    return-object v0
.end method

.method j6(BIII)V
    .registers 8

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/16 v1, 0xe

    invoke-static {v0, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v2, 0x5

    aput-byte p1, v1, v2

    const/4 v1, 0x6

    iput v1, v0, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p4}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    add-int/lit8 v1, p4, 0x5

    add-int/lit8 v1, v1, 0x9

    iput v1, v0, Lcom/jcraft/jsch/Buffer;->FH:I

    return-void
.end method

.method j6(I)V
    .registers 9

    const/4 v6, 0x4

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget v1, v0, Lcom/jcraft/jsch/Buffer;->FH:I

    neg-int v0, v1

    add-int/lit8 v2, p1, -0x1

    and-int/2addr v0, v2

    if-ge v0, p1, :cond_0

    add-int/2addr v0, p1

    :cond_0
    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x4

    iget-object v2, p0, Lcom/jcraft/jsch/Packet;->FH:[B

    ushr-int/lit8 v3, v1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    const/4 v3, 0x1

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x2

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    iget-object v1, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    invoke-static {v2, v5, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    int-to-byte v2, v0

    aput-byte v2, v1, v6

    sget-object v1, Lcom/jcraft/jsch/Packet;->j6:Lcom/jcraft/jsch/Random;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/jcraft/jsch/Packet;->j6:Lcom/jcraft/jsch/Random;

    iget-object v3, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-interface {v2, v3, v4, v0}, Lcom/jcraft/jsch/Random;->j6([BII)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->v5(I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
