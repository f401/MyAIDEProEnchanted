.class Lcom/jcraft/jsch/Channel$1;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jcraft/jsch/Channel;->u7()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private DW:Lcom/jcraft/jsch/Buffer;

.field private FH:Lcom/jcraft/jsch/Packet;

.field private Hw:Z

.field private final VH:Lcom/jcraft/jsch/Channel;

.field final Zo:Lcom/jcraft/jsch/Channel;

.field private j6:I

.field v5:[B


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/Channel;Lcom/jcraft/jsch/Channel;)V
    .registers 3

    iput-object p1, p0, Lcom/jcraft/jsch/Channel$1;->Zo:Lcom/jcraft/jsch/Channel;

    iput-object p2, p0, Lcom/jcraft/jsch/Channel$1;->VH:Lcom/jcraft/jsch/Channel;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/jcraft/jsch/Channel$1;->j6:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/jcraft/jsch/Channel$1;->DW:Lcom/jcraft/jsch/Buffer;

    iput-object p2, p0, Lcom/jcraft/jsch/Channel$1;->FH:Lcom/jcraft/jsch/Packet;

    iput-boolean p1, p0, Lcom/jcraft/jsch/Channel$1;->Hw:Z

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/jcraft/jsch/Channel$1;->v5:[B

    return-void
.end method

.method private j6()V
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->Zo:Lcom/jcraft/jsch/Channel;

    iget v1, v1, Lcom/jcraft/jsch/Channel;->tp:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->DW:Lcom/jcraft/jsch/Buffer;

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v1, p0, Lcom/jcraft/jsch/Channel$1;->FH:Lcom/jcraft/jsch/Packet;

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v0, v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_2d

    add-int/lit8 v0, v0, -0xe

    add-int/lit8 v0, v0, -0x54

    if-lez v0, :cond_20

    monitor-exit p0

    return-void

    :cond_20
    const/4 v0, 0x0

    :try_start_21
    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->DW:Lcom/jcraft/jsch/Buffer;

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->FH:Lcom/jcraft/jsch/Packet;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "failed to initialize the channel."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->FH:Lcom/jcraft/jsch/Packet;

    if-nez v0, :cond_a

    :try_start_4
    invoke-direct {p0}, Lcom/jcraft/jsch/Channel$1;->j6()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_a

    :catch_8
    move-exception v0

    return-void

    :cond_a
    :goto_a
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->Hw:Z

    if-eqz v0, :cond_f

    return-void

    :cond_f
    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->j6:I

    if-lez v0, :cond_16

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->flush()V

    :cond_16
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->VH:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->FH()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->Hw:Z

    return-void
.end method

.method public flush()V
    .registers 6

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->Hw:Z

    if-nez v0, :cond_5a

    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->j6:I

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->FH:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->DW()V

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->DW:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->Zo:Lcom/jcraft/jsch/Channel;

    iget v1, v1, Lcom/jcraft/jsch/Channel;->Hw:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->DW:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/Channel$1;->j6:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->DW:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/Channel$1;->j6:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->v5(I)V

    :try_start_2c
    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->j6:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/jcraft/jsch/Channel$1;->j6:I

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->VH:Lcom/jcraft/jsch/Channel;

    monitor-enter v1
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_34} :catch_4c

    :try_start_34
    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->VH:Lcom/jcraft/jsch/Channel;

    iget-boolean v2, v2, Lcom/jcraft/jsch/Channel;->Ws:Z

    if-nez v2, :cond_47

    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->Zo:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/Channel$1;->FH:Lcom/jcraft/jsch/Packet;

    iget-object v4, p0, Lcom/jcraft/jsch/Channel$1;->VH:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v2, v3, v4, v0}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    :cond_47
    monitor-exit v1

    return-void

    :catchall_49
    move-exception v0

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_34 .. :try_end_4b} :catchall_49

    :try_start_4b
    throw v0
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4c} :catch_4c

    :catch_4c
    move-exception v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->close()V

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(I)V
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->v5:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/jcraft/jsch/Channel$1;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 8

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->FH:Lcom/jcraft/jsch/Packet;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel$1;->j6()V

    :cond_7
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->Hw:Z

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v1, v0

    :goto_10
    if-gtz p3, :cond_13

    return-void

    :cond_13
    iget v2, p0, Lcom/jcraft/jsch/Channel$1;->j6:I

    add-int/lit8 v3, v2, 0xe

    sub-int v3, v1, v3

    add-int/lit8 v3, v3, -0x54

    if-le p3, v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v3, p3

    :goto_1f
    if-gtz v3, :cond_25

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->flush()V

    goto :goto_10

    :cond_25
    add-int/lit8 v2, v2, 0xe

    invoke-static {p1, p2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/jcraft/jsch/Channel$1;->j6:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jcraft/jsch/Channel$1;->j6:I

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    goto :goto_10

    :cond_32
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Already closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3b

    :goto_3a
    throw p1

    :goto_3b
    goto :goto_3a
.end method
