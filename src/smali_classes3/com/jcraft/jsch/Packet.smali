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
    .registers 8

    add-int/lit8 v0, p1, 0x5

    add-int/lit8 v0, v0, 0x9

    neg-int v1, v0

    add-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    if-ge v1, p2, :cond_b

    add-int/2addr v1, p2

    :cond_b
    add-int/2addr v1, v0

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x20

    iget-object p2, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object p3, p2, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v2, p3

    iget p2, p2, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/2addr p2, v1

    add-int/lit8 p2, p2, -0x5

    add-int/lit8 p2, p2, -0x9

    sub-int/2addr p2, p1

    if-ge v2, p2, :cond_29

    new-array p2, p2, [B

    array-length v2, p3

    const/4 v3, 0x0

    invoke-static {p3, v3, p2, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p3, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iput-object p2, p3, Lcom/jcraft/jsch/Buffer;->DW:[B

    :cond_29
    iget-object p2, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object p3, p2, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget p2, p2, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/lit8 p2, p2, -0x5

    add-int/lit8 p2, p2, -0x9

    sub-int/2addr p2, p1

    invoke-static {p3, v0, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    const/16 p3, 0xa

    iput p3, p2, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object p1, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iput v0, p1, Lcom/jcraft/jsch/Buffer;->FH:I

    return v1
.end method

.method j6()Lcom/jcraft/jsch/Buffer;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    return-object v0
.end method

.method j6(BIII)V
    .registers 7

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/16 v1, 0xe

    invoke-static {v0, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p3, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p3, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v1, 0x5

    aput-byte p1, v0, v1

    const/4 p1, 0x6

    iput p1, p3, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-virtual {p3, p2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object p1, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, p4}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object p1, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    add-int/2addr p4, v1

    add-int/lit8 p4, p4, 0x9

    iput p4, p1, Lcom/jcraft/jsch/Buffer;->FH:I

    return-void
.end method

.method j6(I)V
    .registers 8

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->FH:I

    neg-int v1, v0

    add-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    if-ge v1, p1, :cond_b

    add-int/2addr v1, p1

    :cond_b
    add-int/2addr v0, v1

    const/4 p1, 0x4

    sub-int/2addr v0, p1

    iget-object v2, p0, Lcom/jcraft/jsch/Packet;->FH:[B

    ushr-int/lit8 v3, v0, 0x18

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    ushr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    const/4 v5, 0x1

    aput-byte v3, v2, v5

    ushr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    const/4 v5, 0x2

    aput-byte v3, v2, v5

    const/4 v3, 0x3

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    invoke-static {v2, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    int-to-byte v2, v1

    aput-byte v2, v0, p1

    sget-object p1, Lcom/jcraft/jsch/Packet;->j6:Lcom/jcraft/jsch/Random;

    monitor-enter p1

    :try_start_37
    sget-object v0, Lcom/jcraft/jsch/Packet;->j6:Lcom/jcraft/jsch/Random;

    iget-object v2, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget-object v3, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-interface {v0, v2, v3, v1}, Lcom/jcraft/jsch/Random;->j6([BII)V

    monitor-exit p1
    :try_end_45
    .catchall {:try_start_37 .. :try_end_45} :catchall_4b

    iget-object p1, p0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->v5(I)V

    return-void

    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v0
.end method
