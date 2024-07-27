.class Lcom/jcraft/jsch/Channel$MyPipedInputStream;
.super Ljava/io/PipedInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPipedInputStream"
.end annotation


# instance fields
.field private DW:I

.field final FH:Lcom/jcraft/jsch/Channel;

.field private j6:I


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/Channel;I)V
    .registers 4

    iput-object p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->FH:Lcom/jcraft/jsch/Channel;

    invoke-direct {p0}, Ljava/io/PipedInputStream;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6:I

    iget v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6:I

    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->DW:I

    new-array v0, p2, [B

    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    iput p2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6:I

    iput p2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->DW:I

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/Channel;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Lcom/jcraft/jsch/Channel;I)V

    iput p3, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->DW:I

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedOutputStream;I)V
    .registers 5

    iput-object p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->FH:Lcom/jcraft/jsch/Channel;

    invoke-direct {p0, p2}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    const/16 v0, 0x400

    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6:I

    iget v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6:I

    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->DW:I

    new-array v0, p3, [B

    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    iput p3, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6:I

    return-void
.end method

.method private DW()I
    .registers 4

    iget v0, p0, Ljava/io/PipedInputStream;->out:I

    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v0, v0

    :cond_0
    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    if-ge v1, v0, :cond_2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public j6()V
    .registers 5

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/PipedInputStream;->available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/io/PipedInputStream;->out:I

    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    aput-byte v3, v0, v1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/PipedInputStream;->read()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method j6(I)V
    .registers 8

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->DW()I

    move-result v0

    if-ge v0, p1, :cond_7

    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v0, v0

    :goto_0
    sub-int v2, v0, v1

    if-lt v2, p1, :cond_6

    iget v2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->DW:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->DW:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sub-int v1, v0, v1

    if-ge v1, p1, :cond_1

    monitor-exit p0

    :goto_1
    return-void

    :cond_1
    :try_start_1
    new-array v0, v0, [B

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    if-ge v1, v2, :cond_4

    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_3
    monitor-exit p0

    goto :goto_1

    :cond_4
    :try_start_2
    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    if-ge v1, v2, :cond_5

    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    array-length v3, v0

    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v4, v4

    iget v5, p0, Ljava/io/PipedInputStream;->out:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v4, v4

    iget v5, p0, Ljava/io/PipedInputStream;->out:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v2, v2

    iget v3, p0, Ljava/io/PipedInputStream;->out:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/io/PipedInputStream;->out:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_3
    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v1, v1

    iput v1, p0, Ljava/io/PipedInputStream;->in:I

    goto :goto_2

    :cond_6
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_7
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v1, v1

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6:I

    if-le v0, v1, :cond_3

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6:I

    if-ge v0, v1, :cond_8

    iget v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6:I

    :cond_8
    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method
