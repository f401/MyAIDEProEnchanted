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
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/Channel$1;->Zo:Lcom/jcraft/jsch/Channel;

    iput-object p2, p0, Lcom/jcraft/jsch/Channel$1;->VH:Lcom/jcraft/jsch/Channel;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput v0, p0, Lcom/jcraft/jsch/Channel$1;->j6:I

    iput-object v1, p0, Lcom/jcraft/jsch/Channel$1;->DW:Lcom/jcraft/jsch/Buffer;

    iput-object v1, p0, Lcom/jcraft/jsch/Channel$1;->FH:Lcom/jcraft/jsch/Packet;

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->Hw:Z

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->v5:[B

    return-void
.end method

.method private j6()V
    .registers 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->Zo:Lcom/jcraft/jsch/Channel;

    iget v1, v1, Lcom/jcraft/jsch/Channel;->tp:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->DW:Lcom/jcraft/jsch/Buffer;

    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->DW:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->FH:Lcom/jcraft/jsch/Packet;

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, -0xe

    add-int/lit8 v0, v0, -0x54

    if-lez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->DW:Lcom/jcraft/jsch/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->FH:Lcom/jcraft/jsch/Packet;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "failed to initialize the channel."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->FH:Lcom/jcraft/jsch/Packet;

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/jcraft/jsch/Channel$1;->j6()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->Hw:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->j6:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->flush()V

    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->VH:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->FH()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->Hw:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public flush()V
    .registers 6

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->Hw:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->j6:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
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

    :try_start_0
    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->j6:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/jcraft/jsch/Channel$1;->j6:I

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->VH:Lcom/jcraft/jsch/Channel;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->VH:Lcom/jcraft/jsch/Channel;

    iget-boolean v2, v2, Lcom/jcraft/jsch/Channel;->Ws:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->Zo:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/Channel$1;->FH:Lcom/jcraft/jsch/Packet;

    iget-object v4, p0, Lcom/jcraft/jsch/Channel$1;->VH:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v2, v3, v4, v0}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->close()V

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->v5:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/jcraft/jsch/Channel$1;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 9

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->FH:Lcom/jcraft/jsch/Packet;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel$1;->j6()V

    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->Hw:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v3, v2

    move v1, p3

    :goto_0
    if-gtz v1, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->j6:I

    add-int/lit8 v4, v0, 0xe

    sub-int v4, v3, v4

    add-int/lit8 v4, v4, -0x54

    if-le v1, v4, :cond_2

    add-int/lit8 v0, v0, 0xe

    sub-int v0, v3, v0

    add-int/lit8 v0, v0, -0x54

    :goto_1
    if-gtz v0, :cond_3

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->flush()V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/jcraft/jsch/Channel$1;->j6:I

    add-int/lit8 v4, v4, 0xe

    invoke-static {p1, p2, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lcom/jcraft/jsch/Channel$1;->j6:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/jcraft/jsch/Channel$1;->j6:I

    add-int/2addr p2, v0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
